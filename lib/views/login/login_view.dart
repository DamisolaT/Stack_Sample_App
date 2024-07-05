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
            child: Text("Login",
            style: TextStyle(
              color: Colors.white
            ),),
        ),
      ),

      body:Form(
        child: Builder(
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Kindly login to your account to proceed!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 20,),
                  Text("Email", style: TextStyle(fontSize: 16),),
                  SizedBox(height: 5,),
                  TextFormField(
                    controller: viewModel.emailFieldController,
                    validator: viewModel.validateEmail,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Email Address"
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Password", style: TextStyle(fontSize: 16),),
                  SizedBox(height: 5,),
                  TextFormField(
                    controller: viewModel.passwordFieldController,
                    validator: viewModel.validatePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                        hintText: "Password"
                    ),
                  ),
                  SizedBox(height: 40,),
                  ElevatedButton(
                      onPressed: () =>
                      viewModel.onLoginTap(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,

                          padding: EdgeInsets.symmetric(horizontal: 16),
                          textStyle: TextStyle(fontSize: 16)
                      ),
                      child: Center(child: Text("Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),)
                      )
                  )
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
  
