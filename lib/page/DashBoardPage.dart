import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
       child: Center(child: Text("DashBoard Page")),
    );
  }
}