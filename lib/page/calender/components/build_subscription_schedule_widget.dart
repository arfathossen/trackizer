import 'package:flutter/material.dart';

import 'package:trackizer_app/page/calender/components/bg_button_widget.dart';
import 'package:trackizer_app/page/calender/components/my_button.dart';
import 'package:trackizer_app/shared/constants_colors.dart';

class BuildSubscriptionScheduleWidget extends StatefulWidget {
  final List calenderArr;
  const BuildSubscriptionScheduleWidget({super.key, required this.calenderArr});

  @override
  BuildSubscriptionScheduleWidgetState createState() =>
      BuildSubscriptionScheduleWidgetState();
}

class BuildSubscriptionScheduleWidgetState
    extends State<BuildSubscriptionScheduleWidget> {
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
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      height: MediaQuery.sizeOf(context).height * 0.38,
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF282833),
              Color(0xFF282833),
            ],
            stops: [.0, 61],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CalenderTitlecontaint(),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.15,
            width: double.infinity,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: calenderArr.length,
              itemBuilder: (context, index) {
                var obj = calenderArr[index];
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectIndex = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 15),
                      width: 48,
                      decoration: BoxDecoration(
                          color: selectIndex == index
                              ? const Color(0xFF4E4E61)
                              : Constants.bgColors,
                          borderRadius: BorderRadius.circular(16)),
                      child: Column(
                        children: [
                          Text(
                            obj['date'],
                            style: TextStyle(
                                color: Constants.secondaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            obj['day'],
                            style: TextStyle(
                                color: Constants.primaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 10),
                          ),
                          const Spacer(),
                          bgButton_widget(isSelected: selectIndex == index)
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class CalenderTitlecontaint extends StatelessWidget {
  const CalenderTitlecontaint({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 80,
          width: 184,
          child: Text(
            'Subs Schedule',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Constants.secondaryColor,
                fontSize: 30),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '3 subscriptions for today',
              style: TextStyle(color: Constants.primaryColor, fontSize: 15),
            ),
            const MyButton()
          ],
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
