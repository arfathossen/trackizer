import 'package:flutter/material.dart';
import 'package:trackizer_app/shared/constants_colors.dart';

class DescriptionBoxWidget extends StatelessWidget {
  const DescriptionBoxWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Description',
          style: TextStyle(
              color: Constants.primaryColor,
              fontWeight: FontWeight.w700,
              fontSize: 10),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
            width: double.infinity,
            height: 45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  width: 0.1,
                  color: Constants.primaryColor,
                )),
            child: const TextField(
              style: TextStyle(color: Color(0xFFA1A4B2), fontSize: 16),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintStyle: TextStyle(
                  color: Color(0xFFA1A4B2),
                  fontSize: 16,
                ),
              ),
            )),
      ],
    );
  }
}
