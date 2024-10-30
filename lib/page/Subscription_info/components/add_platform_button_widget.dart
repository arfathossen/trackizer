import 'package:flutter/material.dart';

import 'package:trackizer_app/page/welcome_screen/components/custom_button.widget.dart';

class AddPlatformButtonWidget extends StatelessWidget {
  const AddPlatformButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
