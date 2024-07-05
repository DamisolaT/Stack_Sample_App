import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class LoginViewModel extends BaseViewModel{
      TextEditingController emailFieldController = TextEditingController();
      TextEditingController passwordFieldController = TextEditingController();

  void onLoginTap(BuildContext context) {
   if( !(Form.of(context)?.validate() ?? false)){
     return;

   }
  }
  String? validateEmail(String? value) {
    if(value == null || value.isEmpty){
      return "Please enter an email";
    }
    if(!value.contains("@")){
      return "Please enter a valid email";
    }
    return null;
  }

  String? validatePassword(String? value) {
    if(value == null || value.isEmpty){
      return "Please enter an password";
    }
    if(value.length < 6){
      return "Password must  contain at least 6 chars";
    }
    return null;
  }
}