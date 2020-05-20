import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MyAPP(),
  );
}
class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic 8 Ball',
      home: Scaffold(
        backgroundColor: Colors.blue.shade500,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade700,
          title: Text('Magic 8 Ball'),
        ),
        body: MagicApp(),
      ),
    );
  }
}

class MagicApp extends StatefulWidget {
  @override
  _MagicAppState createState() => _MagicAppState();
}

class _MagicAppState extends State<MagicApp> {
  int dno = 1;
  void changeDesc(){
    setState(() {
      dno = Random().nextInt(5) +1 ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          onPressed: (){
            changeDesc();
          },
          child: Image.asset('images/ball$dno.png'),
        ),
      ),
    );
  }
}

