import 'package:flutter/material.dart';

class DifficultyRowWidget extends StatelessWidget {
  const DifficultyRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 5,
          width: 75,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5), topLeft: Radius.circular(5)),
              color: Colors.white30),
        ),
        Container(
          height: 5,
          width: 75,
          decoration: const BoxDecoration(color: Colors.white30),
        ),
        Container(
          height: 5,
          width: 75,
          decoration: const BoxDecoration(color: Colors.white30),
        ),
        Container(
          height: 5,
          width: 75,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5),
                  topRight: Radius.circular(5)),
              color: Colors.white30),
        )
      ],
    );
  }
}
