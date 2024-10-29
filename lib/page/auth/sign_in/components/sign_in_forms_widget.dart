import 'package:flutter/material.dart';

import '../../../../components/costom_textfield.dart';
import '../../../../components/title_logo_widget.dart';
import '../../../welcome_screen/components/custom_button.widget.dart';
import 'difficulty_row_widget.dart';

class SignInFormsWidget extends StatelessWidget {
  const SignInFormsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 50),
          height: 30,
          child: const Center(child: TitleLogoWidget()),
        ),
        const SizedBox(
          height: 110,
        ),
        const CostomTextfield(
          obscureText: false,
          title: 'E-mail address',
        ),
        const SizedBox(
          height: 10,
        ),
        const CostomTextfield(obscureText: true, title: 'Password'),
        const SizedBox(
          height: 20,
        ),
        const DifficultyRowWidget(),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Use 8 or more characters with a mix of letters, numbers & symbols.',
          style: TextStyle(color: Colors.white30),
        ),
        const SizedBox(
          height: 30,
        ),
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
              btnText: 'Get started, it’s free!',
              btnTextColor: Colors.white,
              btnColor: const Color(0xFFFF7966)),
        ),
      ],
    );
  }
}
