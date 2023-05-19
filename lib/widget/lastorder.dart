import 'package:flutter/material.dart';

class CustomProductCard extends StatelessWidget {
  final String imagePath;
  final String productName;
  final String price;
  final VoidCallback? onPressed;

  const CustomProductCard({
    Key? key,
    required this.imagePath,
    required this.productName,
    required this.price,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 169, 101, 77),
      ),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              imagePath,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productName,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 5),
              Text(
                price,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: onPressed,
            child: Text('Add To Cart'),
          ),
        ],
      ),
    );
  }
}
