
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
      backgroundColor: Colors.amber,
      title: Text("title"),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications),
        ),
        PopupMenuButton(
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text('Menu Item 1'),
              ),
              PopupMenuItem(
                child: Text('Menu Item 2'),
              ),
              PopupMenuItem(
                child: Text('Menu Item 3'),
              ),
            ];
          },
          onSelected: (value) {},
        ),
      ],
    ));
  }
}
