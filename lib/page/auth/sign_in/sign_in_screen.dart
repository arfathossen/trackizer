import 'package:flutter/material.dart';

import 'components/do_you_have_already_account.dart';
import 'components/sign_in_forms_widget.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFF112738),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SignInFormsWidget(),
              DoYouHaveAlreadyAccount(),
            ],
          ),
        ),
      ),
    );
  }
}
