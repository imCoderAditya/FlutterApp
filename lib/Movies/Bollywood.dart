import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/models/ModelItems.dart';

class BollyWoodPage extends StatelessWidget {
  const BollyWoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: MoviesList(),
    );
  }
}

class MoviesList extends StatefulWidget {
  const MoviesList({Key? key}) : super(key: key);

  @override
  State<MoviesList> createState() => _MoviesListState();
}

class _MoviesListState extends State<MoviesList> {
  @override
  void initState() {
    super.initState();
    loadMoviesData();
  }

  void loadMoviesData() async {
    final loadData = await rootBundle.loadString("assets/files/Movies.json");

    final decodeData = jsonDecode(loadData);
    var moviesData = decodeData['bollywood'];
    try {
      ModelItems.moviesItemsList = List.from(moviesData)
          .map<MoviesItems>((e) => MoviesItems.fromMap(e))
          .toList();
      setState(() {});
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: ModelItems.moviesItemsList.length,
        itemBuilder: (context, index) {
          return BollyItemWidget(
              moviesItems: ModelItems.moviesItemsList[index]);
        });
  }
}

// ignore: must_be_immutable
class BollyItemWidget extends StatelessWidget {
  MoviesItems moviesItems;
  String imageUrl = "https://image.tmdb.org/t/p/w500/";
  BollyItemWidget({Key? key, required this.moviesItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (ModelItems.moviesItemsList != null &&
            ModelItems.moviesItemsList.isNotEmpty)
        ? Column(
            children: [
              SizedBox(
                child:CachedNetworkImage(
                 imageUrl: imageUrl+moviesItems.poster_path,
                 imageBuilder: (context,imageProvider)=>
                 Card(
                   child: Container(
                     height: 250,
                     width: double.infinity,
                     decoration: BoxDecoration(
                       image: DecorationImage(
                         image: imageProvider,
                         fit: BoxFit.cover,
                        //  colorFilter: ColorFilter.mode(Colors.red, BlendMode.colorBurn)
                       ),
                     ),
                   ),
                 ),
                 placeholder: (context,url)=>const CircularProgressIndicator(
                   color: Colors.grey,
                 ),
                 // color: Colors.grey,
                 errorWidget: (context,url,error)=>const Icon(Icons.error),
                              
                ),
              ),
              
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(imageUrl+moviesItems.poster_path),
                ),
                title: Text(moviesItems.title),
                trailing: const Icon(Icons.more_vert),
              ),
            ],
          )
        : const Center(
            child: CircularProgressIndicator(),
          );
  }
}
