import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:trackizer_app/shared/constants_colors.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16), topRight: Radius.circular(16)),
        color: Constants.bgColors,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
              width: double.infinity,
              height: 52,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    width: 1,
                    color: Constants.primaryColor,
                  )),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  'Add new card',
                  style: TextStyle(
                      color: Constants.primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 15),
                ),
                const SizedBox(
                  width: 8,
                ),
                HugeIcon(
                  icon: HugeIcons.strokeRoundedAddCircle,
                  color: Constants.primaryColor,
                  // icon: HugeIcons.strokeRoundedCar01,
                  size: 16,
                ),
              ])),
        ],
      ),
    );
  }
}
