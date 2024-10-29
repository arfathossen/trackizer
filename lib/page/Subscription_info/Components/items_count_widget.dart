

import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:trackizer_app/shared/constants_colors.dart';

class ItemsCountWidget extends StatelessWidget {
  const ItemsCountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.1,
                    color: Constants.primaryColor,
                  ),
                  color: Constants.ContainerColor,
                  borderRadius: BorderRadius.circular(16)),
              child: HugeIcon(
                  icon: HugeIcons.strokeRoundedRemove01,
                  color: Constants.primaryColor),
            ),
          ),
          SizedBox(
            width: 161,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Mothly price',
                  style: TextStyle(
                      color: Constants.primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 10),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    '\$5.99',
                    style: TextStyle(
                        color: Constants.secondaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Constants.primaryColor,
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.1,
                    color: Constants.primaryColor,
                  ),
                  color: Constants.ContainerColor,
                  borderRadius: BorderRadius.circular(16)),
              child: HugeIcon(
                  icon: HugeIcons.strokeRoundedAdd01,
                  color: Constants.primaryColor),
            ),
          )
        ],
      ),
    );
  }
}