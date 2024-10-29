import 'package:flutter/material.dart';
import 'package:trackizer_app/components/costom_textfield.dart';
import 'package:trackizer_app/components/title_logo_widget.dart';
import 'package:trackizer_app/page/bottom_root/bottom_navbar_screen.dart';

import 'package:trackizer_app/page/welcome_screen/components/custom_button.widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool rememberUser = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF112738),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50),
              height: 30,
              child: Center(child: const TitleLogoWidget()),
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
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Transform.scale(
                      scale: 1.5,
                      child: Checkbox(
                          side: const BorderSide(color: Colors.white30),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          value: rememberUser,
                          onChanged: (value) {
                            setState(() {
                              rememberUser = value!;
                            });
                          }),
                    ),
                    const Text(
                      "Remember me",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "Forgot passoword",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
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
            const Spacer(),
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
        ),
      ),
    );
  }
}
