import 'package:flutter/material.dart';

import 'package:trackizer_app/page/Subscription_info/Components/Description_box_widget.dart';
import 'package:trackizer_app/page/Subscription_info/Components/items_count_widget.dart';



class BuildButtomContainer extends StatelessWidget {
  const BuildButtomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          DescriptionBoxWidget(),
          SizedBox(
            height: 15,
          ),
          ItemsCountWidget()
        ],
      ),
    );
  }
}