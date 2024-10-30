// import 'package:dotted_decoration/dotted_decoration.dart';

import 'package:flutter/material.dart';

import 'package:trackizer_app/page/subscription_info/components/Logo_widget.dart';
import 'package:trackizer_app/page/subscription_info/components/build_header.dart';
import 'package:trackizer_app/page/subscription_info/components/dottedLine_circle_widget.dart';

import 'package:trackizer_app/page/subscription_info/components/list_info_widget.dart';
import 'package:trackizer_app/page/subscription_info/components/subscription_details.dart';
import 'package:trackizer_app/page/welcome_screen/components/custom_button.widget.dart';
import 'package:trackizer_app/shared/constants_colors.dart';

class SubscriptionInfo extends StatelessWidget {
  const SubscriptionInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: Constants.bgColors,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTopContainer(screenHeight, screenWidth),
                  _buildBottomContainer(screenHeight, screenWidth),
                ],
              ),
            ),
            const DottedLineCirclesWidget()
          ],
        ),
      ),
    );
  }
}

Widget _buildTopContainer(double height, double width) {
  return Expanded(
    child: Container(
      // margin: const EdgeInsets.only(top: 20),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(16),
      height: height * 0.40,
      width: width,
      decoration: const BoxDecoration(
        color: Color(0xFF353542),
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: const SafeArea(
        child: Column(
          children: [
            BuildHeader(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  LogoWidget(),
                  SubscriptionDetails()
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget _buildBottomContainer(double height, double width) {
  return Expanded(
    child: Container(
      // margin: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(16),

      width: width,
      decoration: const BoxDecoration(
        color: Color(0xFF282833),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: detailsInfoList()),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: CustomButtonWidget(
              onTap: () {},
              btnText: 'Save',
              btnTextColor: Colors.white,
              btnColor: const Color(0xFF3d3d47),
            ),
          )
        ],
      ),
    ),
  );
}

Widget detailsInfoList() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color(0xFF4E4E61),
          ),
          child: Column(
            children: [
              ListInfoWidget(title: 'Name', name: 'Spotify', onTap: () {}),
              ListInfoWidget(
                  title: 'Description', name: 'Music app', onTap: () {}),
              ListInfoWidget(
                  title: 'Category', name: 'Enterteintment', onTap: () {}),
              ListInfoWidget(
                  title: 'First payment', name: '08.01.2022', onTap: () {}),
              ListInfoWidget(title: 'Reminder', name: 'Never', onTap: () {}),
              ListInfoWidget(title: 'Currency', name: 'USD (\$)', onTap: () {}),
            ],
          ),
        ),
      ),
    ),
  );
}
