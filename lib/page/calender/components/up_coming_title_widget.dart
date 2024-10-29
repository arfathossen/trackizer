import 'package:flutter/material.dart';
import 'package:trackizer_app/shared/constants_colors.dart';

class UpComingTitleWidget extends StatelessWidget {
  const UpComingTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'January',
              style: TextStyle(
                  color: Constants.secondaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Text(
              '01.08.2022',
              style: TextStyle(
                  color: Constants.primaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 10),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '\$24.98',
              style: TextStyle(
                  color: Constants.secondaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Text(
              'in upcoming bills',
              style: TextStyle(
                  color: Constants.primaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 10),
            )
          ],
        )
      ],
    );
  }
}
