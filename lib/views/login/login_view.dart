import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';

import 'login_view_model.dart';

class LoginView extends ViewModelBuilderWidget<LoginViewModel>{
  @override
  Widget builder(BuildContext context, LoginViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
            child: Text("Login"),
        ),
      ),
      body:Form(
        child: Builder(
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: viewModel.emailFieldController,
                    validator: viewModel.validateEmail,
                    decoration: InputDecoration(
                      hintText: "Email Address"
                    ),
                  ),
                  TextFormField(
                    controller: viewModel.passwordFieldController,
                    validator: viewModel.validatePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Password"
                    ),
                  ),
                  ElevatedButton(onPressed: () => viewModel.onLoginTap(context), child: Text("Login"))
                ],
              ),
            );
          }
        ),
      ) ,
    );

  }

  @override
  LoginViewModel viewModelBuilder(BuildContext context) => LoginViewModel();
  }
  
