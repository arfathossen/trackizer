import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../shared/constants_colors.dart';
import '../auth/sign_up/Components/bottom_bar_widget.dart';
import '../setting/settings_screen.dart';
import 'components/card_swiper_widget.dart';
import 'components/subscription_box_widget.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  List arryList = [
    {
      "icon": "assets/images/Group.png",
    },
    {
      "icon": "assets/images/Group.png",
    },
    {
      "icon": "assets/images/Group.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Constants.bgColors,
        elevation: 0,
        title: Text(
          'Credit Cards',
          style: TextStyle(color: Constants.secondaryColor, fontSize: 15),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsScreen()));
              },
              child: HugeIcon(
                icon: HugeIcons.strokeRoundedSetting07,
                size: 24,
                color: Constants.primaryColor,
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: const BottomBarWidget(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: SafeArea(
          child: Column(
            children: [
              CartSwiperWidget(arryList: arryList),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Subscriptions',
                style: TextStyle(
                    color: Constants.secondaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              const SizedBox(
                height: 15,
              ),
              const SubscriptionBoxContainerwidget(),
            ],
          ),
        ),
      ),
    );
  }
}

// class CartWidget extends StatelessWidget {
//   const CartWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(20),
//       height: 349,
//       width: 232,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(16), color: Colors.black54),
//       child: Column(
//         children: [
//           SizedBox(
//             height: 34,
//             width: 56,
//             child: Image.asset('assets/images/Group.png'),
//           ),
//           Text(
//             'Virtual Card',
//             style: TextStyle(
//                 color: Constants.secondaryColor,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20),
//           ),
//           const Spacer(),
//           Text(
//             'John Doe',
//             style: TextStyle(
//                 color: Constants.primaryColor,
//                 fontWeight: FontWeight.w500,
//                 fontSize: 10),
//           ),
//           Text(
//             '08/28',
//             style: TextStyle(
//                 color: Constants.secondaryColor,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20),
//           ),
//           SizedBox(
//             width: 40,
//             height: 28,
//             child: Image.asset('assets/images/Chip.png'),
//           )
//         ],
//       ),
//     );
//   }
// }
