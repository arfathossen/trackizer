import 'package:flutter/material.dart';

class logoWidget extends StatelessWidget {
  const logoWidget({
    super.key,
    required this.banner,
  });

  final dynamic banner;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      width: 160,
      height: 161,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(50),
          image: DecorationImage(
              image: AssetImage(
                banner['picture'],
              ),
              fit: BoxFit.contain)),
    );
  }
}
