import 'package:firebase_auth/firebase_auth.dart';

class UserAuthentication {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool _success = false;

  Future<bool> signInWithEmailAndPassword(
    String email, String password) async {
      try {
        final User? user = (await _auth.signInWithEmailAndPassword(
                email: email, password: password))
          .user;
        if (user != null) {
          _success = true;
        }
      } on FirebaseAuthException catch (e) {
        _success = false;
      }
      return _success;
    }
}
