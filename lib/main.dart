import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask Me Anyting'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  //sebelum mengunakan dart utamakan import dulu diatas
  //lalu ditulis didalam sini penulisan code dart
  int ballNumber = 1;

  void changeBall() {
    ballNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      //ketika mengunakan FlatButton maka onPressed:(){} berlaku untuk memasukkan code dart yang diberi variabel
      child: FlatButton(
          onPressed: () {
            //didalam onPressed: kita bisa mencari data random yang ditampilkan di console seperti dibawah
            // ballNumber = Random().nextInt(5);
            //tuliskan nama variabel dan gunakan properti Random() milik dart
            //dan gunakan nexInt() sebagai nilai maximal dari sebuat pencarian nilai dalam button ketika diklik
            //lalu print() hasil tersebut dengan memasukkan nama variabel
            // print(ballNumber);

            //penulisan mengunakan setstate()
            setState(() {
              changeBall();
            });
          },
          child: Image.asset('image/ball$ballNumber.png')),
    );
  }
}
