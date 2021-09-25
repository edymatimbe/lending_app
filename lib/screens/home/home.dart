import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lending_app/models/user.dart';
import './body/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: homeAppBar(),
      body: Body(),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const Icon(
        Icons.short_text,
        size: 33,
      ),
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
    );
  }
}

// class Header extends StatelessWidget {
//   final String userName;
//   final double userAmount;
//   final Color fontColor;

//   const Header(
//       {Key? key,
//       required this.userName,
//       required this.userAmount,
//       required this.fontColor});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(
//           userName,
//           style: TextStyle(
//             color: fontColor,
//             fontSize: 35,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         Text(
//           userName,
//           style: TextStyle(
//             color: fontColor,
//             fontSize: 35,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ],
//     );
//   }
// }
