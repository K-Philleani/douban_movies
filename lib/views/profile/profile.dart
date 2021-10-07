import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('我的')
      ),
      body: const Center(
        child: Text('我的', style: TextStyle(fontSize: 20, color: Colors.blue))
      )
    );
  }
}