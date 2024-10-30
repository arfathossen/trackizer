import 'package:flutter/material.dart';

import 'package:trackizer_app/page/Subscription_info/Components/logo_widget.dart';

import 'package:trackizer_app/page/subscription_info/subscription_info.dart';

import 'package:trackizer_app/shared/constants_colors.dart';
import 'components/text_container_widget.dart';
import 'components/build_buttom_container.dart';
import 'components/add_platform_button_widget.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});
  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  final List categories = [
    {"name": "Spotify", 'picture': 'assets/images/Spotify Logo.png'},
    {"name": "HGBO GO", 'picture': 'assets/images/Image (6).png'},
    {
      "name": "Microsoft OneDriver",
      'picture': 'assets/images/OneDrive Logo.png'
    },
  ];
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bgColors,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Constants.ContainerColor,
        elevation: 0,
        title: Text(
          'New',
          style: TextStyle(color: Constants.secondaryColor, fontSize: 15),
        ),
      ),
      bottomNavigationBar: const AddPlatformButtonWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height * 0.47,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color(0xFF353542),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextContainerWidget(),
                  SizedBox(
                    height: 210,
                    child: PageView.builder(
                      onPageChanged: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      controller: PageController(viewportFraction: 0.6),
                      itemCount: categories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        var banner = categories[index];
                        var scale = selectedIndex == index ? 1.0 : 0.8;
                        return TweenAnimationBuilder(
                          tween: Tween(begin: scale, end: scale),
                          curve: Curves.ease,
                          duration: const Duration(microseconds: 350),
                          builder: (BuildContext context, double value,
                              Widget? child) {
                            return Transform.scale(
                              scale: value,
                              child: child,
                            );
                          },
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SubscriptionInfo()));
                                },
                                child: logoWidget(banner: banner),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                banner['name'],
                                style: TextStyle(
                                    color: Constants.secondaryColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const BuildButtomContainer()
          ],
        ),
      ),
    );
  }
}
