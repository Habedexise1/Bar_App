// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:bar_app/screen/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Image.asset(
            'images/2.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Positioned(
            top: 700,
            left: 100,
            right: 100,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(
                      title: '',
                    ),
                  ),
                );
              },
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'Get Started',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.white, width: 2),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// Container with get started button
          //   Positioned(
          //     left: 20,
          //     right: 20,
          //     bottom: 20,
          //     child: Container(
          //       padding: EdgeInsets.all(32),
          //       decoration: BoxDecoration(
          //         border: Border.all(color: Colors.white),
          //         borderRadius: BorderRadius.circular(5),
          //         color: Colors.transparent,
          //       ),
          //       // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),s
          //       child: TextButton(
          //         onPressed: () {
          //           // Button pressed callback
          //         },
          //         child: Text(
          //           'Get Started',
          //           style: TextStyle(
          //             fontSize: 16,
          //             color: Colors.white,
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),