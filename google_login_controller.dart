import 'package:stackguy/google_sign_in.dart';

class GoogleSignInController with ChangeNotifier{
  var _googleSignIn = GoogleSignIn();
  GoogleSignInAccount? googleAccount;  

login() async{
  this.googleAccount = await _googleSignIn.signIn();
  notifyListeners();

}


logOut() async{
  this.googleAccount = await _googleSignIn.signOut();
  notifyListeners();
}

  void notifyListeners() {}
}

class ChangeNotifier {
}






