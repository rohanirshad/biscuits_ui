import 'package:cookies_ui/colors.dart';
import 'package:flutter/material.dart';

class OffersBar extends StatelessWidget {
  const OffersBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'Offers',
          style: TextStyle(color: Colors.white, fontSize: 45, height: 1),
        ),
        Spacer(),
        Text(
          'See more',
          style: TextStyle(
              color: morange, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
