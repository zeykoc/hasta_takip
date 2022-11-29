import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthKontroller {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<bool> kayitOl({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential user = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }

  Future<bool> girisYap({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential user = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }
}
