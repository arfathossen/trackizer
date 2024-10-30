import 'package:flutter/material.dart';

import 'package:trackizer_app/shared/constants_colors.dart';

class TextContainerWidget extends StatelessWidget {
  const TextContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Text(
          'Add new \n subscription',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Constants.secondaryColor,
              fontSize: 30),
        ),
      ),
    );
  }
}
