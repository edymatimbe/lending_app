import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:lending_app/screens/signin/signin.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness:
              Brightness.light //or set color with: Color(0xFF0000FF)
          ),
    );

    return MaterialApp(
      title: 'Application',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const SignInScreen(),
    );
  }
}
