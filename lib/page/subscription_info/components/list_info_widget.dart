import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:trackizer_app/shared/constants_colors.dart';

class ListInfoWidget extends StatelessWidget {
  final String name, title;
  final void Function() tap;
  const ListInfoWidget(
      {super.key,
      p,
      required this.name,
      required this.title,
      required this.tap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
            height: 32,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
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
      ),
    );
  }
}
