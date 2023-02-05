//google-signin
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  signinWithGoogle() async {
//it has four steps!
    //1. start interaction - opens gmails list to select google emails from
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    //2. Take auth details from the request - checks if selected email done auth
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;
    //3. make new credentials for user
    final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
    //4. sign in user!
    return FirebaseAuth.instance.signInWithCredential(credential);
  }
}
