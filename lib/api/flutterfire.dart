import 'package:firebase_auth/firebase_auth.dart';

Future<void> signIn(String email, String password) async {}
Future<bool> register(
  // String firstName,
  // String lastName,
  String email,
  // String cellPhone,
  String password,
) async {
  try {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return true;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email');
    }
    return false;
  } catch (e) {
    print(e.toString());
    return false;
  }
}
