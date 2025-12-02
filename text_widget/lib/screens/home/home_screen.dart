import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter'), backgroundColor: Colors.blue),

      body: Center(
        child: Text(
          'Hello flutter developers.',
          maxLines: 2, //maximum lines to show
          style: TextStyle(
            fontSize: 30,
            fontWeight: .bold,
            color: Colors.blue,
            fontStyle: .italic,
            letterSpacing: 2.0, //space between the letters
            height: 1, //to give the spacing between the lines
            overflow: .ellipsis, // ... is shown after the text
            decoration: .underline, //to under or overline
            decorationColor: Colors.red,
            fontFamily: 'Ubuntu',
            wordSpacing: 5, //space between words
            shadows: [
              Shadow(
                color: Colors.red,
                blurRadius: 10,
                offset: Offset(0, 0),
              )
            ]
          ),
        ),
      ),
    );
  }
}
