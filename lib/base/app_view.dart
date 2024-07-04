
import 'package:flutter/material.dart';
import 'package:stack_architecture_app/views/splash/splash_view.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: 'Flutter Demo',
      home: SplashView(),
    );
  }
}


