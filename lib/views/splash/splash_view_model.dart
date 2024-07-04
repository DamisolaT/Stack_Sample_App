
import 'package:flutter/material.dart';
import 'package:stack_architecture_app/views/login/login_view.dart';
import 'package:stacked/stacked.dart';

class SplashViewModel extends BaseViewModel{
  final BuildContext context;
  SplashViewModel(this.context);
  void init() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (_) => LoginView()), (route)=>false);
    
  }

}