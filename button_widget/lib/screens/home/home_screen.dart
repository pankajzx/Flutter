import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool  isCenterTitle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: isCenterTitle,
        title: Text('Title'),
      ),
      body:
      ElevatedButton.icon(
        onPressed: (){
          setState(() {
            isCenterTitle =! isCenterTitle;
          });
        },
        icon: Icon(Icons.home),
        iconAlignment: .end,
        label: Text('Button'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: .circular(8),
          ),
          elevation: 5,
          fixedSize: Size(150, 30), //width and height control
          // maximumSize:
          // minimumSize:

        ),
      ),

      // 
      
      // IconButton(onPressed: (){}, icon: Icon(Icons.home))
    );
  }
}
