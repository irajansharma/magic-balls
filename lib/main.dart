import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.blue.shade900,
        ),
        body: Ballpage(),
      ),
    ),
  );
}

class Ballpage extends StatefulWidget {
  const Ballpage({Key? key}) : super(key: key);

  @override
  State<Ballpage> createState() => _BallpageState();
}

class _BallpageState extends State<Ballpage> {
  int ballno = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  ballno = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$ballno.png'),
            ),
          ),
        ],
      ),
    );
  }
}
