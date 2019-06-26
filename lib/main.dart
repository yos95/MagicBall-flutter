import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: magicBall(),
      ),
    );

class magicBall extends StatefulWidget {
  @override
  _magicBallState createState() => _magicBallState();
}

class _magicBallState extends State<magicBall> {
  int numberBall = 1;
  void numberBallChange() {
    numberBall = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    numberBallChange();
                  });
                },
                child: Image.asset('images/ball$numberBall.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
