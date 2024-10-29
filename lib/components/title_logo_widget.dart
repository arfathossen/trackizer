import 'package:flutter/material.dart';

class TitleLogoWidget extends StatelessWidget {
  const TitleLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/Frame.png',
          height: 29,
          width: 29,
        ),
        const SizedBox(
          width: 5,
        ),
        const Center(
          child: Text(
            'TRACKIZER',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
          ),
        )
      ],
    );
  }
}
