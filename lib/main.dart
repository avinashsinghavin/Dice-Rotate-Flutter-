import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
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
  var leftnum = 'one';
  var rightnum = 'one';
  void changediceface(){
    setState(() {
      switch(Random().nextInt(6) + 1){
        case 1:
          leftnum = 'one';
          break;
        case 2:
          leftnum = 'two';
          break;
        case 3:
          leftnum = 'three';
          break;
        case 4:
          leftnum = 'four';
          break;
        case 5:
          leftnum = 'five';
          break;
        case 6:
          leftnum = 'six';
          break;
      }
      switch(Random().nextInt(6)+1){
        case 1:
          rightnum = 'one';
          break;
        case 2:
          rightnum = 'two';
          break;
        case 3:
          rightnum = 'three';
          break;
        case 4:
          rightnum = 'four';
          break;
        case 5:
          rightnum = 'five';
          break;
        case 6:
          rightnum = 'six';
          break;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                changediceface();
              },
              child: Image.asset('images/dice$leftnum.PNG'),
            ),
          ),
          Expanded (
            child: FlatButton(
              onPressed: () {
                changediceface();
              },
              child: Image(
                image: AssetImage('images/dice$rightnum.PNG'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
