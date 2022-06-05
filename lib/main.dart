
// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:flutterapp/DrawerPage.dart';
import 'package:flutterapp/page/DashBoardPage.dart';
import 'package:flutterapp/page/HomePage.dart';
import 'package:flutterapp/page/SearchPage.dart';
import 'package:flutterapp/page/ShopePage.dart';
import 'package:flutterapp/page/StorePage.dart';

void main() {
  runApp(
    MaterialApp(
    // home: MyApp(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.blueGrey,
    )),

   initialRoute: '/',
      routes: {
        '/': (context) => MyApp(),
        '/Home': (context) => const HomePage(),
        '/DashBoard': (context) => const DashBoard(),
        '/Shope': (context) => const ShopePage(),
        '/Store': (context) => const StorePage(),
        "/Search":(context)=> const SearchPage(),
      },
  ));
}



class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  final List<Widget> _children = const [
    HomePage(),
    DashBoard(),
    ShopePage(),
    StorePage(),
  ];
  void onTabBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Flutter App"),
      // ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, "/Home"),
        child: const Icon(Icons.person),
      ),
      // comment Drawer in this page 
      drawer: DrawerPage(),
      // This is a Body of Bottom _correntIndex
      body: _children[_currentIndex],
     // This is a Bottum Navigation Bar  given Below
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          elevation: 40,
          onTap: onTabBar,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
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
          ],
        ),
    );
  }
}






