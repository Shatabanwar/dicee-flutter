import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _State createState() => _State();
}


class _State extends State<DicePage> {

  void updateDiceNumber(){

    setState(() {
      leftDiceNumber = Random.secure().nextInt(6) + 1;
      rightDiceNumber = Random.secure().nextInt(6)+1;
    });

  }


  static int leftDiceNumber = 1;
  static int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed:(){
                updateDiceNumber();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: (){
                updateDiceNumber();
              },
            ),
          )
        ],
      ),
    );
  }
}
