import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:trackizer_app/page/setting/Components/profile_widget.dart';
import 'package:trackizer_app/shared/constants_colors.dart';

class SubscriptionItemsWidget extends StatelessWidget {
  const SubscriptionItemsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My subscriptions',
          style: TextStyle(color: Constants.secondaryColor, fontSize: 15),
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
                icon: HugeIcons.strokeRoundedSorting01,
                title: 'Sorting',
                onTap: () {},
                name: 'Date',
              ),
              ProfileWidget(
                icon: HugeIcons.strokeRoundedSummationCircle,
                title: 'Summary',
                onTap: () {},
                name: 'Average',
              ),
              ProfileWidget(
                icon: HugeIcons.strokeRoundedCursorRectangleSelection01,
                title: 'Default currency',
                onTap: () {},
                name: 'USD (\$)',
              )
            ],
          ),
        ),
      ],
    );
  }
}
