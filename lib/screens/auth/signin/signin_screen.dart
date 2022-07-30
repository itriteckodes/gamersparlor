import 'dart:developer';

import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:gamersparlor/api/auth.dart';
import 'package:gamersparlor/helpers/loader_theme.dart';
import 'package:gamersparlor/static/datetime_picker.dart';
import 'package:gamersparlor/static/input_field.dart';
import 'package:gamersparlor/static/large_button.dart';
import 'package:gamersparlor/static/newinput.dart';
import 'package:gamersparlor/values/colors.dart';

class SigninScreen extends StatefulWidget {
  SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final _text = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isValid = false;
  String _userEmail = '';
  String _password = '';
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  login() async {
    LoadingHelper.init();
    if (await AuthApi.login(emailController, passwordController))
      Navigator.pushNamed(context, "home");
  }
  void _trySubmitForm() {
    final bool? isValid = _formKey.currentState?.validate();
    if (isValid == true) {
      debugPrint('Everything looks good!');
      debugPrint(_userEmail);
      debugPrint(_password);
      login();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Container(
          margin: EdgeInsets.only(top: 40),
          alignment: Alignment.center,
          child: Form(
            key: _formKey,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Image.asset(
                    'assets/images/logo.png',
                    height: 100,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Signin',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  newInputField(
                    hint: 'Enter your email adress',
                    controller: emailController,
                     validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Please enter your email address';
                          }
                          // Check if the entered email has the right format
                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                            return 'Please enter a valid email address';
                          }
                          // Return null if the entered email is valid
                          return null;
                        },
                        onChange: (value) => _userEmail = value,
                      ),
                  SizedBox(height: 20,),
                  newInputField(
                    hint: 'Enter password',
                    controller: passwordController,
                    obscure: true,
                     validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'This field is required';
                          }
                          if (value.trim().length < 6) {
                            return 'Password must be at least 6 characters in length';
                          }
                          // Return null if the entered password is valid
                          return null;
                        },
                        onChange: (value) => _password = value,

                      ),
                  
                  SizedBox(
                    height: 20,
                  ),
                  LargeButton(
                      title: 'Login',
                      onPressed: () {
                        _trySubmitForm();
                      })
                ]),
          )),
    )));
  }
}
