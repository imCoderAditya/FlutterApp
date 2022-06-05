import 'package:flutter/material.dart';
import 'package:flutterapp/DrawerPage.dart';
import 'package:flutterapp/Movies/Bollywood.dart';
import 'package:flutterapp/Movies/HollyWood.dart';
import 'package:flutterapp/Movies/SouthMovies.dart';
import 'package:flutterapp/Movies/WebSeries.dart';
import 'package:flutterapp/page/ShopePage.dart';
import 'package:flutterapp/page/StorePage.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
     length: 4,
      child: Scaffold(
        appBar: AppBar(
          title:const Text("DashBoard"),

          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
                  Icon(Icons.home),
                  Icon(Icons.timelapse),
                  Icon(Icons.card_travel),
                  Icon(Icons.currency_ruble_sharp),
         ]),
        ),
        drawer: DrawerPage(),
        body:const TabBarView(
          children: [
           BollyWoodPage(),
           HollyWoodPage(),
           SouthMOviesPage(),
           WebSeries(),
        ]),
      ),
    );
  }
}