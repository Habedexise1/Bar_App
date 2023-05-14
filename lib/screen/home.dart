// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  List<IconData> _iconList = [Icons.home, Icons.chat, Icons.map];

  @override
  Widget build(BuildContext context) {
    List<widget> _navBarItemList = [];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.title),
      ),
      bottomNavigationBar: Row(
        children: [
          buildNavigationItem(Icons.home, 0),
          buildNavigationItem(Icons.chat, 1),
          buildNavigationItem(Icons.map, 2),
        ],
      ),
    );
  }

  Widget buildNavigationItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        child: Icon(
          icon,
          color: index == _selectedIndex ? Colors.blue : Colors.grey,
        ),
        height: 70,
        width: MediaQuery.of(context).size.width / 3,
        decoration: index == _selectedIndex
            ? BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 5, color: Colors.blue)),
                gradient: LinearGradient(
                  colors: [
                    Colors.blue.withOpacity(0.5),
                    Colors.blue.withOpacity(0.03),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              )
            : null,
      ),
    );
  }
}
