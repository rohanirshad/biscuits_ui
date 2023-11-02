import 'package:cookies_ui/colors.dart';
import 'package:cookies_ui/screens/widgets/arrow_container.dart';
import 'package:cookies_ui/screens/widgets/primium_label.dart';
import 'package:flutter/material.dart';

import '../../models/cookies.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({super.key, required this.biscuit});
  final Biscuits biscuit;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(right: 5.0),
      child: Stack(
        children: [
          Container(
            height: size.height * 0.15,
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(75),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Container(
                    height: size.height * 0.20,
                    child: Image.asset(biscuit.image),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        biscuit.name,
                        style: TextStyle(
                            color: Colors.white, fontSize: 25, height: 1),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Premium(),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        biscuit.price,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: Colors.white,
                          decorationThickness: 2.0,
                        ),
                      ),
                      Text(
                        '12 USD',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(bottom: 0, right: 0, child: Arrow()),
        ],
      ),
    );
  }
}
