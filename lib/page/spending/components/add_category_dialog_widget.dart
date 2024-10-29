import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:trackizer_app/shared/constants_colors.dart';

class AddCategoryDialogWidget extends StatelessWidget {
  const AddCategoryDialogWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 84,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              width: 1,
              color: Constants.primaryColor,
            )),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Add new category',
            style: TextStyle(
                color: Constants.secondaryColor,
                fontWeight: FontWeight.w700,
                fontSize: 15),
          ),
          const SizedBox(
            width: 8,
          ),
          InkWell(
            onTap: () {},
            child: HugeIcon(
              icon: HugeIcons.strokeRoundedAddCircle,
              // icon: HugeIcons.strokeRoundedCar01,
              size: 32,
              color: Constants.primaryColor,
            ),
          ),
        ]));
  }
}
