// ignore_for_file: prefer_const_constructors

import 'package:catalog_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final String name = "Catalog App";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Container(
          child: Text(
            "Welcome to $name",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
