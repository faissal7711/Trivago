import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final _auth = FirebaseAuth.instance;

  // AuthResult ===>(changed to)===> UserCredential
  Future<UserCredential> signUp(String email, String password) async {
    final authResult = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return authResult;
  }

  // AuthResult ===>(changed to)===> UserCredential
  Future<UserCredential> signIn(String email, String password) async {
    final authResult = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return authResult;
  }
}
