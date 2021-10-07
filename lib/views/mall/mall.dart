import 'package:flutter/material.dart';

class Mall extends StatelessWidget {
  const Mall({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('集市')
      ),
      body: const Center(
        child: Text('集市', style: TextStyle(fontSize: 20, color: Colors.blue))
      )
    );
  }
}