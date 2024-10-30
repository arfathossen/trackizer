import 'package:flutter/material.dart';
import 'package:trackizer_app/components/costom_textfield.dart';
import 'package:trackizer_app/components/title_logo_widget.dart';

import 'package:trackizer_app/page/auth/sign_up/Components/forgot_passwoed_widget.dart';

import 'package:trackizer_app/page/welcome_screen/components/custom_button.widget.dart';

class SignUpFieldWidget extends StatelessWidget {
  const SignUpFieldWidget({
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
          title: 'Login',
        ),
        const SizedBox(
          height: 10,
        ),
        const CostomTextfield(obscureText: true, title: 'Password'),
        const ForgotPasswoedWidget(),
        const SizedBox(
          height: 10,
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
              btnText: 'Sign In',
              btnTextColor: Colors.white,
              btnColor: const Color(0xFFFF7966)),
        ),
      ],
    );
  }
}
