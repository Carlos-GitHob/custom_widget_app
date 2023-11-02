import 'package:flutter/material.dart';

class ConfigPage extends StatelessWidget{
  const ConfigPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      body:Container(
        alignment: FractionalOffset.center,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.brightness_high_outlined, size: 60,),
            ),
            Center(
               child: Text("Configuracion", style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }

}