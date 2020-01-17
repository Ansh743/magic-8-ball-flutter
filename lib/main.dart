import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.blueGrey[500],
      appBar: AppBar(
        backgroundColor: Colors.blue[500],
        title: Center(
          child: Text(
            'Ask Me Anything!?',
            style: TextStyle(
                color: Colors.white, fontSize: 35.0, fontFamily: 'Kalam'),
          ),
        ),
      ),
      body: BallPage(),
    ),
  ));
}

class BallPage extends StatefulWidget {
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  var ballNum = 1;

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              padding: EdgeInsets.all(10.0),
              onPressed: () {
                setState(() {
                  ballNum = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$ballNum.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Ask a question and tap on the ball to get the answer to your question.',
              style: TextStyle(fontSize: 20.0, color: Colors.white70),
            ),
          ),
          SizedBox(height: 50.0,)
        ],
      ),
    );
  }
}