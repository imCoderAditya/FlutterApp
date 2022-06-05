import 'package:flutter/material.dart';
import 'package:flutterapp/page/DashBoardPage.dart';
import 'package:flutterapp/page/ShopePage.dart';
import 'package:flutterapp/page/StorePage.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
     length: 4,
      child: Scaffold(
        appBar: AppBar(
          title:const Text("Home"),

          bottom: const TabBar(
            tabs: [
                  Icon(Icons.home),
                  Icon(Icons.timelapse),
                  Icon(Icons.card_travel),
                  Icon(Icons.currency_ruble_sharp),
         ]),
        ),
        body:const TabBarView(
          children: [
           DashBoard(),
           ShopePage(),
           StorePage(),
           ShopePage(),
        ]),
      ),
    );
  }
}