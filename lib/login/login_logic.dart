import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../dashboard/dashboard_view.dart';
import 'login_view.dart';
class LoginLogic extends GetxController {


  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  var _googlesignin = GoogleSignIn();
  var  googleAccount = Rx<GoogleSignInAccount?>(null);



  login()async {
    googleAccount.value = await _googlesignin.signIn();
    if( googleAccount.value == null )
    {
      Get.offAll(LoginPage());

    }
    else{
      Get.offAll(DashboardPage(name: googleAccount.value?.displayName.toString() ?? 'Welcome',));

    }
  }

  logout()async{
    googleAccount.value = await _googlesignin.signOut();
    Get.offAll(LoginPage());
  }



}
