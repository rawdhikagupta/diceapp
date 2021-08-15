import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[700],
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red[700],
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdice = 5;
  int rightdice =2;
  void Randomfunction(){
    setState(() {
      leftdice = Random().nextInt(6)+1;
      rightdice = Random().nextInt(6)+1 ;
    });
   }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
                  onPressed: () {
                      Randomfunction();
                  }, 
                  child: Image.asset('images/dice$leftdice.png'))),
          Expanded(
            child: FlatButton(
                onPressed: () {
                    Randomfunction();
                },
                child: Image.asset('images/dice$rightdice.png')),
          ),
        ],
      ),
    );
  }
}

