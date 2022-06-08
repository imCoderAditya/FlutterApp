import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/models/ItemProduct.dart';
import '../Utils/DrawerPage.dart';
import 'package:cached_network_image/cached_network_image.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

@override
  void initState() {
    super.initState();
    loadData();
  }


  void loadData() async{
    // await Future.delayed(Duration(seconds: 5));
    final productJson = await rootBundle.loadString("assets/files/Product.json");
    final decodeData = jsonDecode(productJson);
    var productData = decodeData["product"];
    
    // print(productData);
  try{
  ItemProduct.items = List.from(productData) 
  .map<Item>((item1) => Item.fromMap(item1))
  .toList();
   setState(() {});
  }catch(e){
    print(e);
  }

  }



  @override
  Widget build(BuildContext context) {
  // final dummyList = List.generate(20,(index)=>ItemProduct.items[0]);
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
      body:(ItemProduct.items!=null &&ItemProduct.items.isNotEmpty)
      ?ListView.builder(
          itemCount:ItemProduct.items.length,
          itemBuilder: (context, index) {
            return ItemWidgets(
              item: ItemProduct.items[index],
            );
          }):
         const Center(
            child: CircularProgressIndicator(),
          )
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
          onTap: null,
            leading: CachedNetworkImage(
              imageUrl: item.image,
              placeholder: (context,url)=>CircularProgressIndicator(),
              errorWidget: (context ,url,error)=> Icon(Icons.error),
            ),
          // leading: FadeInImage.assetNetwork(
          //   placeholder: "assets/images/login.png",
          //   image: item.image,
          // ),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text("\$${item.price}"),
        ),
      ),
    );
  }
}
