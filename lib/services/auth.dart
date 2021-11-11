import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
// Anonymous SignIn
  Future signInAnon() async {
  try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
    return user;
  } catch (e){
    print(e.toString());
    return null;
  }
}
}