import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Welcome to Our Page!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50.0,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
