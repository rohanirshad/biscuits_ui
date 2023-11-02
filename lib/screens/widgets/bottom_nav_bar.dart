import 'package:flutter/material.dart';

import 'nav_bar_botton.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var index = 0;
  var csize;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
        ),
        Positioned.fill(
          top: -25,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => setState(() {
                  index = 0;
                }),
                child: NavBarBotton(
                  icon: 'assets/home.png',
                  text: 'Home',
                  value: index == 0,
                ),
              ),
              GestureDetector(
                onTap: () => setState(() {
                  index = 1;
                }),
                child: NavBarBotton(
                  icon: 'assets/search.png',
                  text: 'Search',
                  value: index == 1,
                ),
              ),
              GestureDetector(
                onTap: () => setState(() {
                  index = 2;
                }),
                child: NavBarBotton(
                  icon: 'assets/premium.png',
                  text: 'Premium',
                  value: index == 2,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
