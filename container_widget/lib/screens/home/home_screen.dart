import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),

      body: Container(
        margin: .all(20),
        padding: .all(20),
        height: 100,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: Colors.black, width: 3),
          boxShadow: [BoxShadow(color: Colors.black, blurRadius: 5)],
          // shape: .rectangle
          gradient: LinearGradient(colors: [Colors.black, Colors.white],transform: GradientRotation(5)),
        ),
        child: Container(
          width: .infinity,
          height: .infinity,
          color: Colors.red.withAlpha(100),
        ),
      ),
    );
  }
}
