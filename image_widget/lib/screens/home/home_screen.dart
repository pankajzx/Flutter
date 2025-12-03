import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Image.asset('assets/images/home.jpg',height: .infinity,width: .infinity,fit: BoxFit.cover,), //image from assets
        body: Center(
          child: CircleAvatar(
            radius: 100,
            backgroundImage: NetworkImage('https://images.unsplash.com/photo-1695893155131-5edd46be086c?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'), ),
        ),
        );
  }
}
