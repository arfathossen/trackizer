import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import 'package:trackizer_app/page/spending/components/add_category_dialog_widget.dart';

import 'package:trackizer_app/page/spending/components/categoris_list_widget.dart';

import 'package:trackizer_app/page/spending/components/progress_container_widget.dart';
import 'package:trackizer_app/shared/constants_colors.dart';

class SpendingScreen extends StatefulWidget {
  const SpendingScreen({super.key});

  @override
  _SpendingScreenState createState() => _SpendingScreenState();
}

class _SpendingScreenState extends State<SpendingScreen> {
  // final bool _isRecording = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1c1c23),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Constants.bgColors,
        elevation: 0,
        title: Text(
          'Spending % Budgets',
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const ProgresHalfContainerWidget(),
              const SizedBox(
                height: 20,
              ),
              Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        width: 1,
                        color: Constants.primaryColor,
                      )),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Your budgets are on track',
                          style: TextStyle(
                              color: Constants.secondaryColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 15),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const HugeIcon(
                          icon: HugeIcons.strokeRoundedThumbsUp,
                          // icon: HugeIcons.strokeRoundedCar01,
                          size: 32,
                          color: Colors.yellow,
                        ),
                      ])),
              const SizedBox(
                height: 20,
              ),
              const CategoriesListWidget(),
              const SizedBox(
                height: 10,
              ),
              const AddCategoryDialogWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
