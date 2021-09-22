import 'package:flutter/material.dart';
import 'package:lending_app/screens/signin/signin.dart';
import './helpers/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Application ',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const SignInScreen(),
    );
  }
}
