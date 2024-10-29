import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:trackizer_app/page/setting/Components/profile_widget.dart';
import 'package:trackizer_app/shared/constants_colors.dart';

class AppearanceItemsWidget extends StatelessWidget {
  const AppearanceItemsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Appearance',
          style: TextStyle(
              color: Constants.secondaryColor,
              fontWeight: FontWeight.w700,
              fontSize: 15),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: 160,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
              color: Constants.ContainerColor,
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            children: [
              ProfileWidget(
                icon: HugeIcons.strokeRoundedAiGenerative,
                title: 'App icon',
                onTap: () {},
                name: 'Default',
              ),
              ProfileWidget(
                icon: HugeIcons.strokeRoundedSun02,
                title: 'Theme',
                onTap: () {},
                name: 'FaceID',
              ),
              ProfileWidget(
                icon: HugeIcons.strokeRoundedTextFont,
                title: 'Font',
                onTap: () {},
                name: 'inter',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
