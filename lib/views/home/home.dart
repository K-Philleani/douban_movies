import 'package:flutter/material.dart';
import 'package:douban_movies/network/http_request.dart';
import 'package:douban_movies/models/home_model.dart';
import 'package:douban_movies/views/home/childWidget/movie_list_item.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('首页')
      ),
      body: const HomeBody()
    );
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<HomeBody> {
  List<MovieItem> moviesItems = [];

  @override
  void initState() {
    super.initState();
    HttpRequest.request('https://api.vvhan.com/api/douban', method: 'get').then((res) {
      final data = res.data['data'];
      List<MovieItem> items = [];
      for (final movie in data) {
        items.add(MovieItem.fromMap(movie));
      }
      setState(() {
        moviesItems = items;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
       child: ListView.builder(
           itemCount: moviesItems.length,
           itemBuilder: (BuildContext context, int index) {
             return MovieListItem(moviesItems[index]);
           }
       )
    );
  }
}