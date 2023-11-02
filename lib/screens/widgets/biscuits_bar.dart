import 'package:cookies_ui/colors.dart';
import 'package:flutter/material.dart';

class CookieBar extends StatelessWidget {
  const CookieBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Biscuits',
              style: TextStyle(
                color: Colors.white,
                fontSize: 45,
              ),
            ),
            Text(
              'Premium',
              style: TextStyle(
                color: morange,
                fontSize: 30,
                height: 1,
              ),
            ),
          ],
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
