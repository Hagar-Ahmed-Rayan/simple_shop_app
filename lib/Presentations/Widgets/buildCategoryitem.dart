import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iclubprogect2/Models/Category.dart';
import 'package:iclubprogect2/Presentations/Screens/DisplayScreen.dart';
 Widget buildCategoryItem({required Category category, required BuildContext context}){
  return GestureDetector(
   onTap: (){
     Navigator.pushNamed(context, DisplayScreen.routeName, arguments: category);
   },
   child: Container (
    decoration: BoxDecoration(
     color: Color(0xff272c3f),
     borderRadius: BorderRadiusDirectional.circular(10.0),
    ),
    height: 65,
    alignment: Alignment.center,


    child: Text(
    category.name,
     style: TextStyle(
         fontSize: 25.0,
         fontWeight: FontWeight.bold,
         color: Colors.white,
     ),
    ),
   ),
  );
 }