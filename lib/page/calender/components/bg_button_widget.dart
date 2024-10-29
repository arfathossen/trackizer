import 'package:flutter/material.dart';

class bgButton_widget extends StatelessWidget {
  const bgButton_widget({
    super.key,
    required this.isSelected,
  });

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 6,
          width: 6,
          decoration: BoxDecoration(
              color: isSelected ? Colors.orange : null,
              borderRadius: BorderRadius.circular(9)),
        ),
      ],
    );
  }
}
