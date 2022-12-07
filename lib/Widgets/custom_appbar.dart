import 'package:flutter/material.dart';

AppBar customAppBar(String? title, Color? colors, ){
  return AppBar(
    elevation: 0,
    leading: Icon(Icons.arrow_back, color: Colors.black,),
    title: Text(title.toString(), style: TextStyle(
      fontFamily: 'Roboto', 
      color: colors
    ),),
    backgroundColor: Colors.transparent
  ); 
}
