import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_demo_one/screens/Signup/components/sign_up.dart';


import '../../../components/already_have_an_account_acheck.dart';
import '../../../constants.dart';
import '../../Login/login_screen.dart';
import 'package:http/http.dart' as http;

import 'home_screen.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({
    Key? key,
  }) : super(key: key);

  String _email = '';
  String _name = '';
  String _password = '';

  BuildContext? get context => null;

  createAccount() async {
   
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.text,
           
            cursorColor: kPrimaryColor,
       
            decoration: InputDecoration(
              hintText: "Your fullname",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(20),
                child: Icon(Icons.person),
              ),
            ),
            onChanged: (value) => _name = value,
          ),
          const SizedBox(height: 20 / 2),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                hintText: "Your email",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Icon(Icons.email_outlined),
                ),
              ),
              onChanged: (value) => _email = value,
            ),
          ),
          const SizedBox(height: 20 / 2),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: TextFormField(
           
              obscureText: true,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                hintText: "Your password",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Icon(Icons.lock),
                ),
              ),
              onChanged: (value) => _password = value,
            ),
          ),
          SignUp(btnText: 'Create Account', btnPressed: () => createAccount()),
          const SizedBox(height: 20),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
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
