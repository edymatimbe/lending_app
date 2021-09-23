import 'package:flutter/material.dart';
import './body/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Welcome Back",
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
          ),
        ),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}
