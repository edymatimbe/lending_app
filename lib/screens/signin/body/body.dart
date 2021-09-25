import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lending_app/screens/home/home.dart';
import 'package:lending_app/screens/signup/signup.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailControl = TextEditingController();
  final TextEditingController passControl = TextEditingController();

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
      autofocus: false,
      controller: emailControl,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Por favor,este campo não ficar vazio");
        }

        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9+_.-]+.[a-z]")
            .hasMatch(value)) {
          return ("Por favor, insira um e-mail válido");
        }
        return null;
      },
      onSaved: (value) {
        emailControl.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Icon(Icons.mail),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        hintText: "Por favor, Insira o seu e-mail",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );

    final passField = TextFormField(
      autofocus: false,
      controller: passControl,
      obscureText: true,
      validator: (value) {
        RegExp regExp = RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ("ë necessario a senha para sign in");
        }
        if (!regExp.hasMatch(value)) {
          return ("Por favor, insira um password com minimo 6 carateres válido");
        }
      },
      onSaved: (value) {
        passControl.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: const InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Icon(Icons.vpn_key),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        hintText: "Por favor, Insira o seu password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );

    final submitButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: const Color(0xFF2dc993),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () => {signIn(emailControl.text, passControl.text)},
        child: const Text(
          "Entrar",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );

    final createAccount = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text("Ainda não tem conta? "),
        GestureDetector(
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignUpSCreen(),
              ),
            ),
          },
          child: const Text(
            "Registar-se",
            style: TextStyle(
                color: Color(0xFF2dc993),
                fontWeight: FontWeight.w600,
                fontSize: 15),
          ),
        ),
      ],
    );

    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 50,
            horizontal: 40,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 45),
                SizedBox(
                  height: 200,
                  child: Image.asset(
                    "assets/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 45),
                emailField,
                const SizedBox(height: 15),
                passField,
                const SizedBox(height: 25),
                submitButton,
                const SizedBox(height: 10),
                createAccount,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> signIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((uid) => {
                Fluttertoast.showToast(msg: "Bem vindo de volta"),
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                ),
              })
          .catchError((e) => {Fluttertoast.showToast(msg: e!.message)});
    }
  }
}
