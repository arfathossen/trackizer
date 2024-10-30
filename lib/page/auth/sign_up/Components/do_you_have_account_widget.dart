import 'package:flutter/material.dart';
import 'package:trackizer_app/page/bottom_root/bottom_navbar_screen.dart';
import 'package:trackizer_app/page/welcome_screen/components/custom_button.widget.dart';

class DoYouHaveAccount extends StatelessWidget {
  const DoYouHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "If you don't have an account yet?,",
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: 10,
        ),
        CustomButtonWidget(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BottomNavbarScreen()));
            },
            btnText: 'Sign Up',
            btnTextColor: Colors.white,
            btnColor: Colors.white24),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
