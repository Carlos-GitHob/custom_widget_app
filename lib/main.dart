import 'package:custom_widget_app/widgets/home.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const CustomApp());
}

class CustomApp extends StatelessWidget{
  const CustomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Menu de widget custom',
      home: MyHomePage()
    );
  }
}