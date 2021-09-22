import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff90c038),
      child: const Center(
        child: Icon(
          Icons.credit_score, color: Colors.white, size: 100,
        ),
        ),
    );
  }
}
