import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/screens/chat_screen.dart';

import '../models/message_model.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Favorite Contacts',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey,fontSize: 18.0),),
                        IconButton(
                          onPressed: (){},
                          icon:Icon(Icons.more_horiz,color: Colors.blueGrey,))
                      ],
                    ),
                  ),
                  Container(
                     
                      height: 120,                
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                      itemCount: favorites.length,
                      itemBuilder: (BuildContext context, int index) {
                        return 
                        GestureDetector(
                          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_) => ChatScreen(user: favorites[index],),),),
                                                  child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                            
                              children: <Widget>[
                                CircleAvatar(
                                radius: 35.0,
                                backgroundImage: AssetImage( favorites[index].imageUrl),
                                ),
                                SizedBox(height: 6.0),
                                Text(
                                  favorites[index].name,style: 
                                  TextStyle(fontSize: 15.0,
                                  fontWeight: FontWeight.w600,color: Colors.blueGrey),
                                  ),
                              ],
                            ),
                          ),
                        );
                      },),
                  )
                ],
              );
  }
}