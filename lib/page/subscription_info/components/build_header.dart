import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:trackizer_app/shared/constants_colors.dart';

class BuildHeader extends StatelessWidget {
  const BuildHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HugeIcon(
          icon: HugeIcons.strokeRoundedArrowDown01,
          size: 24,
          color: Constants.primaryColor,
        ),
        Text(
          'Subscription info',
          style: TextStyle(color: Constants.secondaryColor, fontSize: 15),
        ),
        HugeIcon(
          icon: HugeIcons.strokeRoundedDelete01,
          size: 24,
          color: Constants.primaryColor,
        ),
      ],
    );
  }
}
