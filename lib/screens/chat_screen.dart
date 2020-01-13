import 'package:flutter/material.dart';

import '../models/message_model.dart';
import '../models/user_model.dart';

class ChatScreen extends StatefulWidget {
  final User user;
  ChatScreen({this.user});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

_buildpessages(Message message,bool isMe)
{
  return 
    Container(
      decoration: BoxDecoration(
        color: isMe ? Colors.black12:Color(0xFFFFEFEE),
        borderRadius: isMe?  BorderRadius.only(topLeft: Radius.circular(15.0),bottomLeft: Radius.circular(15.0)) :
         BorderRadius.only(topRight: Radius.circular(15.0),bottomRight: Radius.circular(15.0))
        ),
      margin: isMe ? EdgeInsets.only(left: 80.0,top: 8.0,bottom: 8.0,):EdgeInsets.only(right: 80.0,top: 8.0,bottom: 8.0,),
      padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(message.time,style: TextStyle(fontWeight: FontWeight.w600,color: Colors.blueGrey,fontSize: 12.0),),
          Text(message.text,style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 16.0),),

        ],
      ))
  ;
}

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
    appBar: AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        color: Colors.white,
        onPressed: (){Navigator.pop(context);},),
      centerTitle: true,
      title: Text(widget.user.name),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.more_horiz),
          color: Colors.white,
          onPressed: (){},)
      ],
      elevation: 0.0,
    ),


    body: Column(
      children: <Widget>[
        Expanded(
            child: GestureDetector(
                         onTap: ()=>FocusScope.of(context).unfocus(),
                         child: Container(
                         decoration: BoxDecoration(
                         color: Theme.of(context).accentColor,
                         borderRadius: BorderRadius.only(
                           topRight: Radius.circular(30.0),
                           topLeft: Radius.circular(30.0)
                           )
                           ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                     topRight: Radius.circular(30.0),
                     topLeft: Radius.circular(30.0)
                     ),
                   child: Padding(
                     padding: EdgeInsets.only(top: 20.0),
                     child: ListView.builder(
                       reverse: true,
                itemCount: messages.length,
                itemBuilder: (BuildContext context, int index) {
                 final bool isMe = messages[index].sender.id==currentUser.id; 

                  return _buildpessages(messages[index],isMe);
                },),
                   ),
              ),
          ),
            ),
        ),
        Container(
          color: Theme.of(context).accentColor,
          child: Row(
            
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.photo),
                color: Theme.of(context).primaryColor,
                onPressed: (){},
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(hintText: 'send messages ... '),
                )),
              IconButton(
                icon: Icon(Icons.send),
                color: Theme.of(context).primaryColor,
                onPressed: (){},
              )

            ],
          ),
        )
      ],
    ),

    );
  }
}