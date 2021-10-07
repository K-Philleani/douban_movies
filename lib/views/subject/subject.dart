import 'package:flutter/material.dart';

class Subject extends StatelessWidget {
  const Subject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('书影音')
      ),
      body: const Center(
        child: Text('书影音', style: TextStyle(fontSize: 20, color: Colors.blue))
      )
    );
  }

}