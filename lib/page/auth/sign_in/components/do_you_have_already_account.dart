import 'package:flutter/material.dart';

import '../../../welcome_screen/components/custom_button.widget.dart';
import '../../sign_up/sign_up_screen.dart';

class DoYouHaveAlreadyAccount extends StatelessWidget {
  const DoYouHaveAlreadyAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Do you have already an account?',
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
                      builder: (context) => const SignUpScreen()));
            },
            btnText: 'Sign In',
            btnTextColor: Colors.white,
            btnColor: Colors.white24),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
