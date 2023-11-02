import 'package:cookies_ui/colors.dart';
import 'package:flutter/material.dart';

class NavBarBotton extends StatelessWidget {
  const NavBarBotton({
    super.key,
    required this.icon,
    required this.text,
    required this.value,
  });
  final icon;
  final text;
  final bool value;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 40,
            width: 40,
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: buttonColor,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              icon,
              color: value ? morange : Colors.white,
            )),
        const SizedBox(height: 5),
        Text(
          text,
          style: TextStyle(color: value ? morange : Colors.white),
        )
      ],
    );
  }
}
