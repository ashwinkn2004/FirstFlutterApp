// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  final imageUrl = "https://avatars.githubusercontent.com/u/88036631?v=4";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      //backgroundColor: Colors.purple,
      child: Container(
        color: Colors.purple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                //decoration: BoxDecoration(color: Colors.purple),
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: Text(
                    "Ashwin K N",
                    style: TextStyle(color: Colors.white),
                  ),
                  accountEmail: Text(
                    "ashwinkn2004@gmail.com",
                    style: TextStyle(color: Colors.white),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                  decoration: BoxDecoration(color: Colors.purple),
                )),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text("HOME", style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
