import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget{
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: Container(
        alignment: FractionalOffset.center,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.home_outlined, size: 60,),
            ),
            Center(
               child: Text("Inicio", style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
      
    );
  }

}