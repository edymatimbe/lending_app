import 'package:flutter/material.dart';

// Colors
const bbPrimaryColor = Color(0xFF2dc993);
const bbPrimaryLightColor = Color(0xFFFF7643);
const bbPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFFFFA53E),
    Color(0xFFFF7643),
  ],
);
const bbSecondaryColor = Color(0xFF233f93);
const bbThirdColor = Color(0xFFFF7643);
const bbTextColor = Color(0xFF757575);

// Animations
const bbAnimationDuration = Duration(milliseconds: 200);

// Text sizes
// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String bbEmailNullError = "Por favor, insira o seu email";
const String bbInvalidEmailError = "Por favor, insira um email válido";
const String bbPassNullError = "Por favor, insira a sua palavra passe";
const String bbShortPassError = "A palavra passe é curta";
const String bbMatchPassError = "A palavra passe não é igual";
const String bbNamelNullError = "Por favor, insira o seu nome";
const String bbPhoneNumberNullError =
    "Por favor, insira o seu número de telemovel";
const String bbAddressNullError = "Por favor, insira o seu endereço";
