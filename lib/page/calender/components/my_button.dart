import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:trackizer_app/shared/constants_colors.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'one';
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      width: 90,
      height: 32,
      decoration: BoxDecoration(
          color: Constants.bgColors, borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          DropdownButton<String>(
            icon: Icon(
              HugeIcons.strokeRoundedArrowDown01,
              size: 12,
              color: Constants.secondaryColor,
            ),
            value: dropdownValue,
            onChanged: (String? newValue) {
              dropdownValue = newValue!;
            },
            items: [
              DropdownMenuItem<String>(
                  alignment: Alignment.center,
                  value: 'one',
                  child: Text(
                    'January',
                    style: TextStyle(
                        color: Constants.secondaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 12),
                  )),
              DropdownMenuItem<String>(
                  value: 'two',
                  child: Text(
                    'February',
                    style: TextStyle(
                        color: Constants.secondaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 12),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
