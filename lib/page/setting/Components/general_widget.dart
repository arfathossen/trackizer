

import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:trackizer_app/page/setting/Components/profile_widget.dart';
import 'package:trackizer_app/page/setting/Components/switch_widget.dart';
import 'package:trackizer_app/shared/constants_colors.dart';

class GeneralItemsWidget extends StatelessWidget {
  const GeneralItemsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'General',
          style:
              TextStyle(color: Constants.secondaryColor, fontSize: 15),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5),
          height: 112,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Constants.ContainerColor,
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            children: [
              ProfileWidget(
                icon: HugeIcons.strokeRoundedFingerAccess,
                title: 'Security',
                onTap: () {},
                name: 'FaceID',
              ),
              SwitchWidget(
                  icon: HugeIcons.strokeRoundedCloud,
                  title: 'iCloud Sync',
                  onTap: () {})
            ],
          ),
        ),
      ],
    );
  }
}