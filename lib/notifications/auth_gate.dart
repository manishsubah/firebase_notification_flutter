import 'package:firebase_auth/firebase_auth.dart';

class AuthGate {
  const AuthGate();

  Future<bool> isAuthenticated() async {
    return FirebaseAuth.instance.currentUser != null;
  }
}
