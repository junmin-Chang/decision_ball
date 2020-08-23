import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    home: BallPage(),
  ),
);

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ask Me Anything2'),
          backgroundColor: Colors.blue[900],
        ),
        body: Ball());
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: FlatButton(
            onPressed: () {
              setState(() {
                changeBall();
              });
            },
            child: Image.asset('images/ball$ballNumber.png')),
      ),
    );
  }

  void changeBall() {
    ballNumber = Random().nextInt(5) + 1;
  }
}
