import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:trackizer_app/page/spending/spending_screen.dart';
import 'package:trackizer_app/page/calender/calender_screen.dart';
import 'package:trackizer_app/page/cart/card_screen.dart';
import 'package:trackizer_app/page/home/home_screen.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  int cuttentIndex = 0;
  List screens = const [
    HomeScreen(),
    SpendingScreen(),
    CalenderScreen(),
    CardScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1d1d24),
      floatingActionButton: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
          BoxShadow(
            color: const Color(0xFFFF7966).withOpacity(0.1),
            blurRadius: 5,
            spreadRadius: 10,
            offset: const Offset(0, 20),
          )
        ]),
        child: FloatingActionButton(
          onPressed: () {},
          shape: const CircleBorder(),
          elevation: 5,
          backgroundColor: const Color(0xFFFF7966),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 32,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        elevation: 1,
        height: 60,
        color: const Color(0xFF414151),
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  cuttentIndex = 0;
                });
              },
              icon: HugeIcon(
                icon: HugeIcons.strokeRoundedHome09,
                size: 30,
                color: cuttentIndex == 0 ? Colors.white : Colors.grey.shade400,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  cuttentIndex = 1;
                });
              },
              icon: HugeIcon(
                icon: HugeIcons.strokeRoundedDashboardCircle,
                size: 30,
                color: cuttentIndex == 1 ? Colors.white : Colors.grey.shade400,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  cuttentIndex = 2;
                });
              },
              icon: HugeIcon(
                icon: HugeIcons.strokeRoundedCalendar02,
                size: 30,
                color: cuttentIndex == 2 ? Colors.white : Colors.grey.shade400,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  cuttentIndex = 3;
                });
              },
              icon: HugeIcon(
                icon: HugeIcons.strokeRoundedCreditCard,
                size: 30,
                color: cuttentIndex == 3 ? Colors.white : Colors.grey.shade400,
              ),
            ),
          ],
        ),
      ),
      body: screens[cuttentIndex],
    );
  }
}
