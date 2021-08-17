import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  FirebaseAuth _auth = FirebaseAuth.instance;
  FacebookLogin _facebookLogin = FacebookLogin();
  @override
  void onInit() {
    super.onInit();
  }

  Future<UserCredential> googleSignIn() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    UserCredential userCredential =
        await _auth.signInWithCredential(credential);
    print(userCredential.user!.email);
    return _auth.signInWithCredential(credential);
  }

  void facebookLogin() async {
    final resuft = await _facebookLogin.logIn(['email']);
    final token = resuft.accessToken.token;
    if (resuft.status == FacebookLoginStatus.loggedIn) {
      final facebookCredential = FacebookAuthProvider.credential(token);
      await _auth.signInWithCredential(facebookCredential);
    }
  }

  Future<void> logOut() async {
    await _auth.signOut();
  }
}
