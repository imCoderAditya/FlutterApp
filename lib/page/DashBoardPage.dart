// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutterapp/Utils/DrawerPage.dart';
import 'package:flutterapp/Movies/Bollywood.dart';
import 'package:flutterapp/Movies/HollyWood.dart';
import 'package:flutterapp/Movies/SouthMovies.dart';
import 'package:flutterapp/Movies/WebSeries.dart';



class DashBoard extends StatelessWidget {
  const DashBoard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
     length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title:const Text("DashBoard"),

          bottom: const TabBar(
           padding: EdgeInsets.only(bottom: 1),
            indicatorColor: Colors.white,
            tabs: [
                  // Icon(Icons.home),
                  // Icon(Icons.timelapse),
                  // Icon(Icons.card_travel),
                  // Icon(Icons.currency_ruble_sharp),
                  Tab(
                    child:Text("BollyWood"),
                  ),
                  Tab(
                      child:Text("HollyWood"), 
                  ),
                  Tab(
                    child: Text("South "),
                  ),
                  Tab(
                    child: Text("Web Series"),
                  )
                  
              
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