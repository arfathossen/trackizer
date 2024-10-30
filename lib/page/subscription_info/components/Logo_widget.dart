import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.30,
        height: MediaQuery.sizeOf(context).width * 0.30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: const DecorationImage(
            image: AssetImage('assets/images/Spotify Logo.png'),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
