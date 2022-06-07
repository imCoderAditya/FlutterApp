import 'package:flutter/material.dart';
import 'package:flutterapp/models/ItemProduct.dart';

import '../Utils/DrawerPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final dummyList = List.generate(20,(index)=>ItemProduct.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, "/Search"),
            icon: const Icon(Icons.search),
          )
        ],
      ),
      drawer: DrawerPage(),
      body: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidgets(
              item: dummyList[index],
            );
          }),
    );
  }
}

class ItemWidgets extends StatelessWidget {
  final Item item;
  const ItemWidgets({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5,bottom: 4,left: 8,right: 8),
      child: Card(
        color: Colors.blueGrey,
        shadowColor: Colors.blueGrey,
        child: ListTile(
          leading: FadeInImage.assetNetwork(
            placeholder: "assets/images/login.png",
            image: item.image,
          ),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text("\$${item.price}"),
        ),
      ),
    );
  }
}
