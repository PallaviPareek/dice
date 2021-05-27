import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff210070),
        appBar: AppBar(
          backgroundColor: Color(0xffED335F),
          title: Center(
            child: Text('Dice'),
          ),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdice = 1;
  int rightdice = 1;
  void diceclick(){
    setState(() {
      leftdice = Random().nextInt(6)+1;
      rightdice = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: FlatButton(
            onPressed: () {
              diceclick();
            },
            child: Image.asset('images/dice$leftdice.png'),
          ),
          ),
          Expanded( child: FlatButton(
            onPressed: () {
              diceclick();
            },
            child: Image.asset('images/dice$rightdice.png'),
          ),
          ),
        ],
      ),
    );
  }
}
