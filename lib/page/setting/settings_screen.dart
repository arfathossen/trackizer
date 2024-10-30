import 'package:flutter/material.dart';

import 'package:trackizer_app/page/setting/Components/appearance_widget.dart';
import 'package:trackizer_app/page/setting/Components/general_widget.dart';
import 'package:trackizer_app/page/setting/Components/profile_avatar_widget.dart';

import 'package:trackizer_app/page/setting/Components/subscription_widget.dart';

import 'package:trackizer_app/shared/constants_colors.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Constants.bgColors,
      appBar: AppBar(
        centerTitle: true,
        // backgroundColor: Constants.bgColors,
        elevation: 0,
        title: Text(
          'Credit Cards',
          style: TextStyle(color: Constants.secondaryColor, fontSize: 15),
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ProfileAvatarWidget(),
            ),
            SizedBox(
              height: 10,
            ),
            GeneralItemsWidget(),
            SizedBox(
              height: 10,
            ),
            SubscriptionItemsWidget(),
            SizedBox(
              height: 10,
            ),
            AppearanceItemsWidget(),
          ],
        ),
      ),
    );
  }
}
