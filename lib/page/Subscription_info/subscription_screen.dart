import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:trackizer_app/page/Subscription_info/Components/Description_box_widget.dart';
import 'package:trackizer_app/page/Subscription_info/Components/items_count_widget.dart';
import 'package:trackizer_app/page/Subscription_info/Components/logo_widget.dart';
import 'package:trackizer_app/page/auth/register/components/button_widget.dart';
import 'package:trackizer_app/page/subscription_info/subscription_info.dart';
import 'package:trackizer_app/page/welcome_screen/components/custom_button.widget.dart';
import 'package:trackizer_app/shared/constants_colors.dart';

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
  var _selectedIndex = 0;

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
      bottomNavigationBar: Container(
        height: MediaQuery.sizeOf(context).height * 0.12,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFFF7966)
                        .withOpacity(0.5), // Shadow color with opacity
                    spreadRadius: 3, // Spread value
                    blurRadius: 6, // Blur value
                    offset: const Offset(0, 3), // Offset (horizontal, vertical)
                  ),
                ],
              ),
              child: CustomButtonWidget(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const));
                  },
                  btnText: 'Add this platform',
                  btnTextColor: Colors.white,
                  btnColor: const Color(0xFFFF7966)),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height * 0.47,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Constants.ContainerColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  TextContainerWidget(),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 210,
                    child: PageView.builder(
                      onPageChanged: (index) {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                      controller: PageController(viewportFraction: 0.6),
                      itemCount: categories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        var banner = categories[index];
                        var scale = _selectedIndex == index ? 1.0 : 0.8;
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
                                    color: Constants.primaryColor,
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
            const _BuildButtomContainer()
          ],
        ),
      ),
    );
  }
}

class TextContainerWidget extends StatelessWidget {
  const TextContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          'Add new \n subscription',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Constants.secondaryColor,
              fontSize: 30),
        ),
      ),
    );
  }
}

class _BuildButtomContainer extends StatelessWidget {
  const _BuildButtomContainer({
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
