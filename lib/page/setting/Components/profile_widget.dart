import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:trackizer_app/shared/constants_colors.dart';

class ProfileWidget extends StatelessWidget {
  final IconData icon;
  final String title, name;

  final void Function() onTap;
  const ProfileWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.name,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
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
                            icon: icon,
                            size: 24,
                            color: Constants.secondaryColor,
                          ),
                        )),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Constants.secondaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Constants.primaryColor,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 12.0,
                    color: Constants.primaryColor,
                  )
                ],
              ),
            ],
          )),
    );
  }
}
