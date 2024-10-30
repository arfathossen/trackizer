import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:trackizer_app/page/spending/components/linear_Progress_bar_widget.dart';
import 'package:trackizer_app/shared/constants_colors.dart';

class BudgetsCategoryItemsWidget extends StatelessWidget {
  final String plantName, title, sub, price;
  final IconData icon;
  const BudgetsCategoryItemsWidget({
    super.key,
    required this.plantName,
    required this.title,
    required this.sub,
    required this.price,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      alignment: Alignment.center,
      width: double.infinity,
      height: 84,
      decoration: BoxDecoration(
        color: Constants.ContainerColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  HugeIcon(
                    icon: icon,
                    // icon: HugeIcons.strokeRoundedCar01,
                    size: 32,
                    color: Constants.primaryColor,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        plantName,
                        style: TextStyle(
                            color: Constants.secondaryColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 15),
                      ),
                      Text(
                        title,
                        style: TextStyle(
                            color: Constants.primaryColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    price,
                    style: TextStyle(
                        color: Constants.secondaryColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 15),
                  ),
                  Text(
                    sub,
                    style: TextStyle(
                        color: Constants.primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const LinearProgressBarWidget()
          // const Center(
          //     child: LinearProgressIndicator(
          //   value: 50,
          //   backgroundColor: Colors.blue,
          // ))
        ],
      ),
    );
  }
}
