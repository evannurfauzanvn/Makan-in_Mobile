import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<User> signInAnonymously() async {
    UserCredential userCredential = await _auth.signInAnonymously();
    User? firebaseUser = userCredential.user;

    if (firebaseUser != null) {
      return firebaseUser;
    } else {
      throw FirebaseAuthException(
        code: 'ERROR_ANONYMOUS_SIGN_IN_FAILED',
        message: 'Anonymous sign-in failed',
      );
    }
  }

  static Future<void> signOut() async {
    await _auth.signOut();
  }

  static Stream<User?> get firebaseUserStream => _auth.authStateChanges();
}
