import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body:Column(
        mainAxisAlignment: .spaceAround,
        crossAxisAlignment: .center,
        children: [
          Row(
            mainAxisAlignment: .spaceAround,
            children: [
              Container(
                height: 100,
                width: 50,
                color: Colors.green,
              ),
              Container(
                height: 100,
                width: 50,
                color: Colors.orange,
              ),Container(
                height: 100,
                width: 50,
                color: Colors.green,
              ),
              Container(
                height: 100,
                width: 50,
                color: Colors.orange,
              ),
            ],
          ),
          Container(
            height: 100,
            width: 200,
            color: Colors.green,
          ),
          Container(
            height: 100,
            width: 200,
            color: Colors.orange,
          ),
          // ElevatedButton(onPressed: (){}, child: Text('This is button')),
          Container(
            height: 100,
            width: 200,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
