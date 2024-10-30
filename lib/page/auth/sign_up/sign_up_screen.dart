import 'package:flutter/material.dart';

import 'package:trackizer_app/page/auth/sign_up/Components/do_you_have_account_widget.dart';

import 'Components/sign_up_field_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
              SignUpFieldWidget(),
              DoYouHaveAccount(),
            ],
          ),
        ),
      ),
    );
  }
}
