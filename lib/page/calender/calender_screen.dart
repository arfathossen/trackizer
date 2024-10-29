import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:trackizer_app/page/calender/components/build_subscription_schedule_widget.dart';
import 'package:trackizer_app/page/calender/components/my_button.dart';
import 'package:trackizer_app/page/calender/components/up_coming_Bill_widget.dart';
import 'package:trackizer_app/page/calender/components/up_coming_title_widget.dart';
import 'package:trackizer_app/shared/constants_colors.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({super.key});

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  final List calenderArr = [
    {'date': "08", 'day': 'Mo'},
    {'date': "09", 'day': 'Tu'},
    {'date': "10", 'day': 'We'},
    {'date': "11", 'day': 'Th'},
    {'date': "12", 'day': 'Fr'},
    {'date': "13", 'day': 'Sa'},
    {'date': "14", 'day': 'Su'},
    {'date': "15", 'day': 'Mo'},
    {'date': "16", 'day': 'Su'},
    {'date': "17", 'day': 'Mo'},
  ];
  List arryList = [
    {
      "icon": "assets/images/Spotify Logo.png",
      "title": "Spotify",
      'sub': '\$5.99',
    },
    {
      "icon": "assets/images/YT Premium Lgoo.png",
      "title": "YouTube Premium",
      'sub': '\$18.99',
    },
    {
      "icon": "assets/images/OneDrive Logo.png",
      "title": "Microsoft OneDrive",
      'sub': '\$29.99',
    },
  ];

  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bgColors,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Constants.bgColors,
        elevation: 0,
        title: Text(
          'Calendar',
          style: TextStyle(color: Constants.secondaryColor, fontSize: 15),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: HugeIcon(
              icon: HugeIcons.strokeRoundedSetting07,
              size: 24,
              color: Constants.primaryColor,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BuildSubscriptionScheduleWidget(
              calenderArr: [],
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  const UpComingTitleWidget(),
                  buildUpcomingBillsWidget(arryList: arryList)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
