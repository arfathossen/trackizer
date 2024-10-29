// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import 'package:trackizer_app/shared/constants_colors.dart';

class SwitchWidget extends StatefulWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const SwitchWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: Center(
                          child: HugeIcon(
                            icon: widget.icon,
                            size: 24,
                            color: Constants.secondaryColor,
                          ),
                        )),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      widget.title,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: Constants.secondaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              CupertinoSwitch(
                activeColor: Colors.green,
                thumbColor: Constants.primaryColor,
                value: switchValue,
                onChanged: (value) {
                  setState(() {
                    switchValue = value;
                  });
                },
              ),
            ],
          )),
    );
  }
}
