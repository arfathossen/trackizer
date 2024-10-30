import 'package:flutter/material.dart';
import 'package:trackizer_app/components/title_logo_widget.dart';
import 'package:trackizer_app/page/auth/register/components/button_widget.dart';
import 'package:trackizer_app/page/auth/sign_in/sign_in_screen.dart';
import 'package:trackizer_app/page/welcome_screen/components/custom_button.widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(66, 36, 35, 35),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50),
              height: 30,
              child: const Center(
                child: TitleLogoWidget(),
              ),
            ),
            const Spacer(),
            const ButtonWidget(
              images: 'assets/images/Apple.png',
              title: "Sign up with Apple",
              textColor: Colors.white,
              bgColor: Colors.black,
            ),
            const SizedBox(
              height: 10,
            ),
            const ButtonWidget(
              images: 'assets/images/Google.png',
              title: "Sign up with Apple",
              textColor: Colors.black,
              bgColor: Color(0xFFFFFFFF),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xfff1771e6)
                        .withOpacity(0.5), // Shadow color with opacity
                    spreadRadius: 3, // Spread value
                    blurRadius: 6, // Blur value
                    offset: const Offset(0, 3), // Offset (horizontal, vertical)
                  ),
                ],
              ),
              child: const ButtonWidget(
                images: 'assets/images/Facebook.png',
                title: "Sign up with Facebook",
                textColor: Colors.white,
                bgColor: Color(0xfff1771e6),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'or',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButtonWidget(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInScreen()));
                },
                btnText: 'Sigh up with E-mail',
                btnTextColor: Colors.white,
                btnColor: Colors.white24),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'By registering, you agree to our Terms of Use. Learn how we collect, use and share your data.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
