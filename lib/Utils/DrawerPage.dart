import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DrawerPage extends StatelessWidget {

  String name = "Aditya Kumar";
  String email = "adsharmavashishtha@gmail.com";
  String url = "https://avatars.githubusercontent.com/u/64741789?s=400&u=cd40dfb73e4fe3859406622d6d9a77015cecac6a&v=4";
  DrawerPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blueGrey
            ),
            accountName: Text("$name"), 
            accountEmail: Text("$email"),
            currentAccountPicture: CircleAvatar(
              backgroundColor:Colors.blueGrey,
              backgroundImage: NetworkImage(url),
            )
            ),

        ],
      ),
    );
  }
}