import 'package:flutter/material.dart';
import 'package:trackizer_app/shared/constants_colors.dart';

class SubscriptionDetails extends StatelessWidget {
  const SubscriptionDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Spotify',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Constants.secondaryColor,
            fontSize: 25,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          '\$5.99',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Constants.secondaryColor,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
