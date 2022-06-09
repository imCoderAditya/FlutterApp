import 'package:flutter/material.dart';

import '../Utils/DrawerPage.dart';



class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Home"),
        actions: [
          IconButton(
            onPressed: ()=>Navigator.pushNamed(context, "/Search"),
            icon: const Icon(Icons.search),
          
          )
        ],
      ),
      drawer: DrawerPage(),

      body: const Center(
        child: Text("Home Page"),
      ),
    );
  }
}