import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  DrawerPage({ Key? key }) : super(key: key);
  String accountName = "Aditya Kumar";
  String accountEmail = "adsharmavashishtha@gmail.com";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader( 
            decoration:const BoxDecoration(
            
             color: Colors.blueGrey,
            ),
            accountName: Text(accountName),
             accountEmail: Text(accountEmail),
             currentAccountPicture: const CircleAvatar(   
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage("https://yt3.ggpht.com/ytc/AKedOLRCoHOT7jej4RS5jxwWHslY7hzaug1SaYh6jIU8Hg=s68-c-k-c0x00ffffff-no-rj"),
              ),
            ),
          const ListTile(
            title: Text("Profile"),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.login),
            subtitle: Text('Person'),
          )
        ],
      ),
    );
  }
}