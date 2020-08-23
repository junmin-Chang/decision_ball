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
          title: Text('Ask Me Anything'),
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
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlatButton(
              onPressed: () {
                return null;
              },
              child: Image.asset('images/ball$ballNumber.png')),


          SizedBox(height: 150.0,),

          MaterialButton(

            color: Colors.blue[900],
            child: Text('Magic!',
            style: TextStyle(
              fontSize: 20.0,
              fontFamily:'Pacifico'
            ),),

            onPressed: () {
              changeBall();
            },

            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
            elevation: 15.0,

          )
        ],
      ),
    );
  }

  void changeBall() {

    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });

  }
}
