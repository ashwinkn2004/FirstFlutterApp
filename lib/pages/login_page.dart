// ignore_for_file: prefer_const_constructors, sort_child_properties_last, use_build_context_synchronously
//import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:catalog_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool change = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        change = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        change = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Form(
        key: _formKey,
        child: Column(children: [
          Image.asset(
            "assets/images/login.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Welcome $name",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter the username",
                    labelText: "Username",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Username cannot be empty";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter the password",
                    labelText: "Password",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Username cannot be empty";
                    } else if (value.length < 6) {
                      return "Password length should contain atleast 6 characters";
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          InkWell(
            onTap: () => moveToHome(context),
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              width: change ? 50 : 150,
              height: 50,
              alignment: Alignment.center,
              child: change
                  ? Icon(
                      Icons.done,
                      color: Colors.white,
                    )
                  : Text(
                      "Login",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
              decoration: BoxDecoration(
                //shape: change? BoxShape.circle: BoxShape.rectangle,
                color: Colors.purple,
                borderRadius: BorderRadius.circular(change ? 50 : 8),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
