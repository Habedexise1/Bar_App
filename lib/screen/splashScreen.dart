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
      body: Stack(
        children: [
          CarouselSlider(
            items: _images
                .map((item) => Container(
                      child: Center(
                        child: Image.network(item,
                            fit: BoxFit.cover, height: double.infinity),
                      ),
                    ))
                .toList(),
            options: CarouselOptions(
              autoPlay: false,
              enlargeCenterPage: true,
              aspectRatio: 1.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _images.map((url) {
                int index = _images.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index ? Colors.white : Colors.grey),
                );
              }).toList(),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: ElevatedButton(
              onPressed: () {
                // Navigate to the home screen
              },
              child: Text('Get Started'),
            ),
          ),
        ],
      ),
    );
  }
}
