import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();

  final firstNameControl = TextEditingController();
  final lastNameControl = TextEditingController();
  final emailControl = TextEditingController();
  final addressControl = TextEditingController();
  final countryControl = TextEditingController();
  final cityControl = TextEditingController();
  final numberControl = TextEditingController();
  final passControl = TextEditingController();
  final confirmPassControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final firstNameField = TextFormField(
      autofocus: false,
      controller: firstNameControl,
      keyboardType: TextInputType.name,
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
        hintText: "Insira o seu email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );
    final lastNameField = TextFormField(
      autofocus: false,
      controller: lastNameControl,
      keyboardType: TextInputType.name,
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
    final addressField = TextFormField(
      autofocus: false,
      controller: addressControl,
      keyboardType: TextInputType.text,
      onSaved: (value) {
        addressControl.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Icon(Icons.location_on),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        hintText: "Insira o seu endereço",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );
    final countryField = TextFormField(
      autofocus: false,
      controller: countryControl,
      keyboardType: TextInputType.name,
      onSaved: (value) {
        countryControl.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Icon(Icons.public),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        hintText: "Insira o seu País",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );
    final cityField = TextFormField(
      autofocus: false,
      controller: cityControl,
      keyboardType: TextInputType.name,
      onSaved: (value) {
        cityControl.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Icon(Icons.public),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        hintText: "Insira a sua cidade",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );
    final numberField = TextFormField(
      autofocus: false,
      controller: numberControl,
      keyboardType: TextInputType.number,
      onSaved: (value) {
        numberControl.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Icon(Icons.phone),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        hintText: "Insira o seu número de telemóvel",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );
    final passField = TextFormField(
      autofocus: false,
      controller: passControl,
      obscureText: true,
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
        hintText: "Insira o seu password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );
    final confirmPassField = TextFormField(
      autofocus: false,
      controller: confirmPassControl,
      obscureText: true,
      onSaved: (value) {
        confirmPassControl.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Icon(Icons.vpn_key),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        hintText: "Confirme o seu password",
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
        onPressed: () => {},
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
                countryField,
                const SizedBox(height: 15),
                addressField,
                const SizedBox(height: 15),
                numberField,
                const SizedBox(height: 15),
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
}
