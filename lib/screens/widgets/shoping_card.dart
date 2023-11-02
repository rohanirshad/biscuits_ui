// shoping_card.dart

import 'package:cookies_ui/colors.dart';
import 'package:flutter/material.dart';

class SopingCard extends StatelessWidget {
  const SopingCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: 80,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '6',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Products',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: -25,
            left: (80 - 40) / 2,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              child: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            right: 18,
            top: -20,
            child: Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(shape: BoxShape.circle, color: morange),
            ),
          ),
        ],
      ),
    );
  }
}
