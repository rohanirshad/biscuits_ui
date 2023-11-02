import 'package:cookies_ui/colors.dart';
import 'package:cookies_ui/models/cookies.dart';
import 'package:flutter/material.dart';
import 'arrow_container.dart';
import 'primium_label.dart';

class CookieCard extends StatelessWidget {
  const CookieCard({
    super.key,
    required this.cookie,
  });
  final Cookie cookie;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cardSize = size.height * 0.20;
    var cookieSize = size.height * 0.16;
    return Container(
      height: cardSize,
      width: cardSize,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(75),
        ),
        color: buttonColor,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 16, bottom: 16, right: 32, top: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cookie.name,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                const Premium(),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  cookie.price,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: -95,
            left: (cardSize - cookieSize) / 2,
            child: SizedBox(
              height: cookieSize,
              // width: cookieSize,
              child: Image.asset(cookie.image),
            ),
          ),
          const Positioned(
            bottom: 0,
            right: 0,
            child: Arrow(),
          ),
        ],
      ),
    );
  }
}
