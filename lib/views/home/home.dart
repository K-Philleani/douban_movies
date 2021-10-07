import 'package:flutter/material.dart';
import 'package:douban_movies/network/http_request.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('首页')
      ),
      body: HomeBody()
    );
  }
}

class HomeBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<HomeBody> {
  @override
  void initState() {
    super.initState();
    HttpRequest.request('https://api.vvhan.com/api/douban', method: 'get').then((res) {
      final data = res.data['data'];
      print(data);
      print(data.runtimeType);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text('首页11', style: TextStyle(fontSize: 20, color: Colors.blue))
    );
  }
}