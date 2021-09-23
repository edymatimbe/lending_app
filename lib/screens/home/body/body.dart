import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 100,
            child: Image.asset("assets/images/greta.jpg"),
          ),
          const Text(
            "Bem Vindo",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          ActionChip(
              label: const Text("Sair"),
              onPressed: () {
                Navigator.of(context).pop();
              })
        ],
      ),
    );
  }
}
