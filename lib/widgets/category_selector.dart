import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selected_category=0;

  final  List<String> category_list =['Messages','Online','Groups','Requests'];
  
  
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: category_list.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
            onTap: (){
              setState(() {
                selected_category=index;
              });
            },
            child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 30.0),
            child: Text(
              category_list[index],
              style: TextStyle(
                color: index == selected_category ? Colors.white : Colors.white60,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.20,
                fontSize: 24.0),),
          ),
        );
      },
      
        )
      
    );
  }
}