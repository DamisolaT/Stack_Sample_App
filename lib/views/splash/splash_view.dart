

import 'package:flutter/material.dart';
import 'package:stack_architecture_app/views/splash/splash_view_model.dart';
import 'package:stacked/stacked.dart';

class SplashView extends ViewModelBuilderWidget<SplashViewModel> {
  const SplashView({super.key});


  @override
  Widget builder(BuildContext context, SplashViewModel viewModel, Widget? child) {
    return Scaffold(
      body: Center(
          child: Text("Splash Screen",
            style: Theme.of(context).textTheme.headlineLarge,)
      ),
    );
  }


  @override
  SplashViewModel viewModelBuilder(BuildContext context) => SplashViewModel(context);

  @override
  void onViewModelReady(SplashViewModel viewModel) {
    viewModel.init();
  }

  @override
  bool get reactive => true;


}
