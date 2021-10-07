import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('首页')
      ),
      body: const Center(
        child: Text('首页', style: TextStyle(fontSize: 20, color: Colors.blue))
      )
    );
  }
}