import 'package:flutter/material.dart';

class SubscriptionsBoxLogoWidget extends StatelessWidget {
  final String image;
  const SubscriptionsBoxLogoWidget({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        image,
        height: 40,
        width: 40,
      ),
    );
  }
}
