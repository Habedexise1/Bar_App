// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final List<String> _images = [
    'https://i.pinimg.com/564x/d0/7b/51/d07b51aa1fbd871620c804e602ac2a29.jpg',
    'https://i.pinimg.com/564x/d0/7b/51/d07b51aa1fbd871620c804e602ac2a29.jpg',
    'https://i.pinimg.com/564x/d0/7b/51/d07b51aa1fbd871620c804e602ac2a29.jpg',
  ];

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
    );
  }
}
