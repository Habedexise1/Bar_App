// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("title"),
      ),
      bottomNavigationBar: Row(
        children: [
          buildNavigationItem(Icons.home),
          buildNavigationItem(Icons.chat),
          buildNavigationItem(Icons.map),
        ],
      ),
    );
  }

  Container buildNavigationItem([IconData? icon]) {
    return Container(
      child: Icon(icon),
      height: 70,
      width: MediaQuery.of(context).size.width / 3,
      decoration: BoxDecoration(
          // color: Colors.blue,
          gradient: LinearGradient(colors: [
        Colors.blue.withOpacity(0.5),
        Colors.blue.withOpacity(0.03),
      ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
    );
  }
}
