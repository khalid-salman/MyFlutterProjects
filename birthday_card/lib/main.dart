import 'package:flutter/material.dart';

void main() {
  runApp(BirthdayCard());
}

class BirthdayCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFd2bcd5),
        body:
            Center(child: Image(image: AssetImage('images/birthsdayCard.png'))),
      ),
    );
  }
}
