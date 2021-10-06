import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: const Text("Movies")
      ),
      body: const Center(
        child: Text("Hello"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        unselectedFontSize: 14,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '首页',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: '分类'
          ),
        ],
        onTap: (int index) =>  setState(() { _currentIndex = index; }),
      ),
    );
  }
}