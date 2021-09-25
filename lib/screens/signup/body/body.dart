import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lending_app/models/user.dart';
import 'package:lending_app/screens/home/home.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _auth = FirebaseAuth.instance;

  final _formKey = GlobalKey<FormState>();

  final firstNameControl = TextEditingController();
  final lastNameControl = TextEditingController();
  final emailControl = TextEditingController();
  // final addressControl = TextEditingController();
  // final countryControl = TextEditingController();
  // final cityControl = TextEditingController();
  final numberControl = TextEditingController();
  final passControl = TextEditingController();
  final confirmPassControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final firstNameField = TextFormField(
      autofocus: false,
      controller: firstNameControl,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regExp = RegExp("^[a-zA-Z0-9+_.-]");
        if (value!.isEmpty) {
          return ("É necessario a nome para registar-se");
        }
        if (!regExp.hasMatch(value)) {
          return ("Por favor, insira um nome com minimo 3 carateres válido");
        }
      },
      onSaved: (value) {
        firstNameControl.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Icon(Icons.person),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        hintText: "Insira seu primeiro nome",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );
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
        contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        hintText: "Insira seu email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );
    final lastNameField = TextFormField(
      autofocus: false,
      controller: lastNameControl,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regExp = RegExp("^[a-zA-Z0-9+_.-]");
        if (value!.isEmpty) {
          return ("É necessario a nome para registar-se");
        }
        if (!regExp.hasMatch(value)) {
          return ("Por favor, insira um nome com minimo 3 carateres válido");
        }
      },
      onSaved: (value) {
        lastNameControl.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Icon(Icons.person),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        hintText: "Insira seu último nome",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );
    // final addressField = TextFormField(
    //   autofocus: false,
    //   controller: addressControl,
    //   keyboardType: TextInputType.text,
    //   onSaved: (value) {
    //     addressControl.text = value!;
    //   },
    //   textInputAction: TextInputAction.next,
    //   decoration: const InputDecoration(
    //     prefixIcon: Padding(
    //       padding: EdgeInsets.symmetric(horizontal: 10),
    //       child: Icon(Icons.location_on),
    //     ),
    //     contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
    //     hintText: "Insira o seu endereço",
    //     border: OutlineInputBorder(
    //       borderRadius: BorderRadius.all(Radius.circular(8)),
    //     ),
    //   ),
    // );
    // final countryField = TextFormField(
    //   autofocus: false,
    //   controller: countryControl,
    //   keyboardType: TextInputType.name,
    //   onSaved: (value) {
    //     countryControl.text = value!;
    //   },
    //   textInputAction: TextInputAction.next,
    //   decoration: const InputDecoration(
    //     prefixIcon: Padding(
    //       padding: EdgeInsets.symmetric(horizontal: 10),
    //       child: Icon(Icons.public),
    //     ),
    //     contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
    //     hintText: "Insira o seu País",
    //     border: OutlineInputBorder(
    //       borderRadius: BorderRadius.all(Radius.circular(8)),
    //     ),
    //   ),
    // );
    // final cityField = TextFormField(
    //   autofocus: false,
    //   controller: cityControl,
    //   keyboardType: TextInputType.name,
    //   onSaved: (value) {
    //     cityControl.text = value!;
    //   },
    //   textInputAction: TextInputAction.next,
    //   decoration: const InputDecoration(
    //     prefixIcon: Padding(
    //       padding: EdgeInsets.symmetric(horizontal: 10),
    //       child: Icon(Icons.public),
    //     ),
    //     contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
    //     hintText: "Insira a sua cidade",
    //     border: OutlineInputBorder(
    //       borderRadius: BorderRadius.all(Radius.circular(8)),
    //     ),
    //   ),
    // );
    // final numberField = TextFormField(
    //   autofocus: false,
    //   controller: numberControl,
    //   keyboardType: TextInputType.number,
    //   validator: (value) {
    //     if (value!.isEmpty) {
    //       return ("Por favor,este campo não ficar vazio");
    //     }

    //     if (!RegExp("^[0-9+_.-]").hasMatch(value)) {
    //       return ("Por favor, insira um numero válido");
    //     }
    //     return null;
    //   },
    //   onSaved: (value) {
    //     numberControl.text = value!;
    //   },
    //   textInputAction: TextInputAction.next,
    //   decoration: const InputDecoration(
    //     prefixIcon: Padding(
    //       padding: EdgeInsets.symmetric(horizontal: 10),
    //       child: Icon(Icons.phone),
    //     ),
    //     contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
    //     hintText: "Insira seu número",
    //     border: OutlineInputBorder(
    //       borderRadius: BorderRadius.all(Radius.circular(8)),
    //     ),
    //   ),
    // );
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
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Icon(Icons.vpn_key),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        hintText: "Insira seu password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );
    final confirmPassField = TextFormField(
      autofocus: false,
      controller: confirmPassControl,
      obscureText: true,
      validator: (value) {
        if (confirmPassControl.text != passControl.text) {
          return "Senhas diferentes";
        }
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Icon(Icons.vpn_key),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        hintText: "Confirme seu password",
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
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () => {
          signUp(emailControl.text, passControl.text),
        },
        child: const Text(
          "Registar",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
    // ignore: non_constant_identifier_names

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
                firstNameField,
                const SizedBox(height: 15),
                lastNameField,
                const SizedBox(height: 15),
                emailField,
                const SizedBox(height: 15),
                // numberField,
                // const SizedBox(height: 15),
                passField,
                const SizedBox(height: 15),
                confirmPassField,
                const SizedBox(height: 25),
                submitButton
              ],
            ),
          ),
        ),
      ),
    );
  }

  void signUp(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {postDetailsToFirestore()})
          .catchError((e) {
        Fluttertoast.showToast(msg: e.message);
      });
    }
  }

  postDetailsToFirestore() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    UserModel userModel = UserModel();
    userModel.email = user!.email;
    userModel.uid = user.uid;
    userModel.firstName = firstNameControl.text;
    userModel.lastName = lastNameControl.text;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());

    Fluttertoast.showToast(msg: 'Conta criada com sucesso');

    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
        (route) => false);
  }
}
