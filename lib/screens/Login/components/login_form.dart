import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_demo_one/components/background.dart';
import 'package:flutter_demo_one/screens/main/main.dart';

import '../../../components/already_have_an_account_acheck.dart';
import '../../../constants.dart';

import '../../Signup/signup_screen.dart';

import 'login.dart';

class LoginForm extends StatelessWidget {
  LoginForm({
    Key? key,
  }) : super(key: key);

  String _email = '';
  String _password = '';
  String btnText = 'Login';

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            decoration: InputDecoration(
              hintText: "Enter your email (myemail@gmail.com)",
              prefixIcon: Padding(
                padding: EdgeInsets.all(10),
                child: Icon(Icons.person),
              ),
            ),
            onChanged: (value) => _email = value,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              obscureText: true,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                hintText: "Enter your password",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(Icons.lock, color: kPrimaryColor,),
                  
                ),
              ),
              onChanged: (value) => _password = value,
            ),
          ),
          const SizedBox(height: 20),
          //Login(btnText: btnText, btnPressed: () => login())
          ElevatedButton(
            
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return MainScreen();
                },
              ),
            ),
            
            child: Text(
              btnText.toUpperCase(),
            ),
            
          ),
          const SizedBox(height: 20),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
