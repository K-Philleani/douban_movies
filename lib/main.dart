import 'package:douban_movies/widgets/tabber_item.dart';
import 'package:flutter/material.dart';
import 'package:douban_movies/views/home/home.dart';
import 'package:douban_movies/views/mall/mall.dart';
import 'package:douban_movies/views/profile/profile.dart';
import 'package:douban_movies/views/subject/subject.dart';
import 'package:douban_movies/views/group/group.dart';

// import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // debugPaintSizeEnabled = true;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.green,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
      ),
      title: '豆瓣电影',
      home: const MyStackPage()
    );
  }
}

class MyStackPage extends StatefulWidget {
  const MyStackPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyStackState();
}
class _MyStackState extends State<MyStackPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: const <Widget>[
          Home(),
          Subject(),
          Group(),
          Mall(),
          Profile()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        unselectedFontSize: 14,
        type: BottomNavigationBarType.fixed ,
        items: [
          TabBarItem('home', '首页'),
          TabBarItem('subject', '书影音'),
          TabBarItem('group', '小组'),
          TabBarItem('mall', '市集'),
          TabBarItem('profile', '我的'),
        ],
        onTap: (int index) =>  setState(() { _currentIndex = index; }),
      ),
    );
  }
}
