
import "package:flutter/material.dart";

import "sec_pro.dart";


void main() {
runApp(const MyApp());
 
}


//type of widget:
//stateless widget- immuatable-once made it cannot be changed 
//statefulwidget

//remember every widget has state 
//what is state- it refers to any data that define how the wigdet is rendered and behave

class MyApp extends StatelessWidget{
  const MyApp({super.key});

 @override
  Widget build(BuildContext context){ //we have to return a widget
  return const MaterialApp(
    home: Mydeccopage(),
  );
  }
}

