import 'package:flutter/material.dart';

class AcercaDePage extends StatelessWidget{
  const AcercaDePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Container(
        alignment: FractionalOffset.center,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.person_pin_rounded, size: 60,),
            ),
            Center(
               child: Text("Acerca de", style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }

}