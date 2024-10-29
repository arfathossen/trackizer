// import 'package:dotted_decoration/dotted_decoration.dart';

import 'package:flutter/material.dart';

import 'package:trackizer_app/page/subscription_info/components/Logo_widget.dart';
import 'package:trackizer_app/page/subscription_info/components/build_header.dart';
import 'package:trackizer_app/page/subscription_info/components/dottedLine_circle_widget.dart';
import 'package:trackizer_app/page/subscription_info/components/list_info_widget.dart';
import 'package:trackizer_app/page/subscription_info/components/subscription_details.dart';
import 'package:trackizer_app/page/welcome_screen/components/custom_button.widget.dart';

class SubscriptionInfo extends StatelessWidget {
  const SubscriptionInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final double containerHeight1 = size.height * 0.40;
    final double containerHeight2 = size.height * 0.53;

    return Scaffold(
      backgroundColor: const Color(0xFF1c1c23),
      body: Stack(
        children: [
          SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTopContainer(containerHeight1),
                _buildBottomContainer(containerHeight2),
              ],
            ),
          ),
          DottedLineCirclesWidget(size: size),
          // _buildDottedLine(),
        ],
      ),
    );
  }

  Widget _buildTopContainer(double height) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20, top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      height: height,
      decoration: const BoxDecoration(
        color: Color(0xFF3d3d47),
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: const Column(
        children: [
          BuildHeader(),
          SizedBox(height: 20),
          LogoWidget(),
          SizedBox(height: 15),
          SubscriptionDetails()
        ],
      ),
    );
  }

  Widget _buildBottomContainer(double height) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      height: height,
      decoration: const BoxDecoration(
        color: Color(0xFF353542),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
      ),
      child: Column(
        children: [
          detailsInfoList(),
          const SizedBox(height: 25),
          CustomButtonWidget(
            onTap: () {},
            btnText: 'Save',
            btnTextColor: Colors.white,
            btnColor: const Color(0xFF3d3d47),
          ),
        ],
      ),
    );
  }
}

Widget detailsInfoList() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
    height: 270,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: const Color(0xFF4E4E61),
    ),
    child: Column(
      children: [
        ListInfoWidget(title: 'Name', name: 'Spotify', tap: () {}),
        ListInfoWidget(title: 'Description', name: 'Music app', tap: () {}),
        ListInfoWidget(title: 'Category', name: 'Enterteintment', tap: () {}),
        ListInfoWidget(title: 'First payment', name: '08.01.2022', tap: () {}),
        ListInfoWidget(title: 'Reminder', name: 'Never', tap: () {}),
        ListInfoWidget(title: 'Currency', name: 'USD (\$)', tap: () {}),
      ],
    ),
  );
}
