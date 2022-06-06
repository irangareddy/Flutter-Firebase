import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Create User Object based on FirebaseUser 

  

  // Sign in as Anonymous

  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
    }
  return null;
  }
  

  //  Sign in with Email & Password

  // Register with Email & Password

  // Sign Out 


}