import 'package:flutter/material.dart';
import 'package:flutterapp/DrawerPage.dart';
import 'package:flutterapp/page/DashBoardPage.dart';
import 'package:flutterapp/page/HomePage.dart';
import 'package:flutterapp/page/ShopePage.dart';
import 'package:flutterapp/page/StorePage.dart';
void main(){
  runApp(
    MaterialApp(
      home:MyApp(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blueGrey,
        )
      ),
    )
  );
}
class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _currentIndex = 0;
 
  List<Widget> _children = const [
    HomePage(),
    DashBoard(),
    ShopePage(),
    StorePage(),
    ]; 
 void onTabBar(int index){
   setState(() {
     _currentIndex = index;
   });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text("Flutter App"),
        ),
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton:FloatingActionButton(
          onPressed: ()=>null,
          child:const Icon(Icons.person),
          ),
        drawer:DrawerPage(),
        body: _children[_currentIndex],
        bottomNavigationBar:BottomNavigationBar(
          currentIndex: _currentIndex,
          elevation: 40,
          onTap: onTabBar,
          type: BottomNavigationBarType.fixed,
          items:const <BottomNavigationBarItem> [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: "DashBoard",
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shop_two_rounded),
              label: "Shop",
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.store),
              label: "Store",
              ),
          ]
          ),
      );
       
    
  }
}