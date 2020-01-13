import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/widgets/category_selector.dart';
import 'package:flutter_chat_ui_starter/widgets/favorite_conatcts.dart';
import 'package:flutter_chat_ui_starter/widgets/messages_list.dart';

import '../models/message_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Theme.of(context).primaryColor,
       appBar: AppBar(
         centerTitle: true,
         leading: IconButton(
           icon: Icon(Icons.menu),
           iconSize: 30.0,
           color: Colors.white,
           onPressed: (){},
         ),



         title: Text(
           'chats',
           style: TextStyle(),),
           actions: <Widget>[
             IconButton(
           icon: Icon(Icons.search),
           iconSize: 30.0,
           color: Colors.white,
           onPressed: (){},
         ),

           ],
           elevation: 0.0,
       ),
       body: Column(
         children: <Widget>[
           CategorySelector(),
           Expanded(
             child: Container(
               decoration: BoxDecoration(
                 color: Theme.of(context).accentColor,
                 borderRadius: BorderRadius.only(
                   topRight: Radius.circular(30.0),
                   topLeft: Radius.circular(30.0)
                   )
                   ),
              child: Column(
                children: <Widget>[
                  FavoriteContacts(),
                  MessagesList()
                ],
              )
             
             )
             ),

         ],
       ),
    );
  }
}
