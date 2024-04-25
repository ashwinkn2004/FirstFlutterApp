// ignore_for_file: prefer_const_constructors, sort_child_properties_last

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
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
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
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40.0,
        ),
        InkWell(
          onTap: () async {
            setState(() {
              change = true;
            });
            await Future.delayed(Duration(seconds: 1));
            Navigator.pushNamed(context, MyRoutes.homeRoute);
          },
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
        /*ElevatedButton(
          child: Text("Login"),
          style: TextButton.styleFrom(
              minimumSize: Size(150, 40),
              backgroundColor: Colors.purple,
              foregroundColor: Colors.white),
          onPressed: () {
            Navigator.pushNamed(context, MyRoutes.homeRoute);
          },
          /*onPressed: () {
            if ((passCtrl.text == Pass) & (nameCtrl.text == Name)) {
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            }
          },*/
        )*/
      ]),
    );
  }
}
