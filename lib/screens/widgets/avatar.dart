import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 24,
      backgroundColor: Colors.white,
      child: CircleAvatar(
          radius: 23, backgroundImage: AssetImage('assets/r2.jpg')),
    );
  }
}
