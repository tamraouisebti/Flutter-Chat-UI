import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/screens/chat_screen.dart';

import '../models/message_model.dart';
import '../models/message_model.dart';
import '../models/message_model.dart';
import '../models/message_model.dart';
import '../models/message_model.dart';

class MessagesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: Container(
            decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.only(
                   topRight: Radius.circular(30.0),
                   topLeft: Radius.circular(30.0)
                   )
                   ),
         
         child: ClipRRect(
             borderRadius: BorderRadius.only(
                   topRight: Radius.circular(30.0),
                   topLeft: Radius.circular(30.0)
                   )
                   ,
             child: ListView.builder(
             itemCount: chats.length,
             itemBuilder: (BuildContext context, int index) {
               
               return GestureDetector(
                   onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_) => ChatScreen(user: chats[index].sender,),),),
                   child: Container(
                   margin: EdgeInsets.only(top:5.0,bottom:5.0,right:20.0),
                   padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.only(topRight: Radius.circular(30.0),bottomRight: Radius.circular(30.0),),
                     color: chats[index].unread ? Color(0xFFFFEFEE) : Colors.white,
                     
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Row(
                         children: <Widget>[
                           CircleAvatar(radius: 35.0,backgroundImage: AssetImage(chats[index].sender.imageUrl),),
                           SizedBox(width: 15.0,),
                           Column(
                             
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: <Widget>[
                               Text(chats[index].sender.name,style: TextStyle(fontSize: 15.0,color: Colors.grey,fontWeight: FontWeight.bold),),
                               SizedBox(height: 5.0,),
                               SizedBox(width: 150.0,
                               child: Text(chats[index].text,
                               overflow: TextOverflow.ellipsis,
                               style: TextStyle(
                                 fontSize: 15.0,
                                 color: Colors.blueGrey,
                                 fontWeight: FontWeight.w600),))
                             ],
                           ),
                              
                               
                       
                         ],
                       ),
                                 Column(
                                 children: <Widget>[
                                   Text(chats[index].time,style: TextStyle(fontSize: 15.0,color: Colors.grey,fontWeight: FontWeight.bold),),
                                   SizedBox(height: 5.0),
                                   chats[index].unread ? Container(
                                     height: 20.0,
                                     width: 40.0,
                                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),color: Theme.of(context).primaryColor),
                                     alignment: Alignment.center,
                                     child: Text(
                                       'NOW',
                                       style: TextStyle(
                                         fontSize: 12.0,
                                         color: Colors.white,
                                         fontWeight: FontWeight.bold),
                                         )
                                         ):Text(''),
                                 ],
                               ),
                     ],
                   ),
                 ),
               ) ;
             },),
         ),
        
      ),
    );
  }
}