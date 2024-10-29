import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../components/title_logo_widget.dart';
import '../Subscription_info/subscription_screen.dart';
import '../auth/register/register_screen.dart';
import 'components/custom_button.widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 29, 25, 25),
              Color.fromARGB(255, 168, 158, 130),
              Color.fromARGB(255, 123, 149, 170),
              Color.fromARGB(255, 29, 25, 25),
            ],
            stops: [.1, 0.20, 0.50, 0.75],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            transform: GradientRotation(math.pi / 7),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50),
              height: 30,
              child: const Center(child: TitleLogoWidget()),
            ),
            const SizedBox(
              height: 5,
            ),
            const _Background(),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Text(
                'Congue malesuada in ac justo, a tristique leo massa. Arcu leo leo urna risus.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterScreen()));
                  },
                  btnText: 'Get started',
                  btnTextColor: Colors.white,
                  btnColor: const Color(0xFFFF7966)),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomButtonWidget(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SubscriptionScreen()));
                },
                btnText: 'I have an account',
                btnTextColor: Colors.white,
                btnColor: Colors.white24),
            // ElevatedButton.icon(

            //   onPressed: () {},
            //   label: const Text('sdglk'),
            //   icon: const Icon(Icons.abc),
            // )
          ],
        ),
      ),
    );
  }
}

class _Background extends StatelessWidget {
  const _Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.60,
          child: Stack(
            children: [
              Positioned(
                top: 20,
                left: 20,
                child: SizedBox(
                  height: 420,
                  width: 320,
                  child: Image.asset(
                    'assets/images/Frame_icon.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                  right: -229,
                  left: -530,
                  child: SizedBox(
                    height: 219,
                    width: 208,
                    child: Image.asset(
                      'assets/images/Image (3).png',
                      fit: BoxFit.contain,
                    ),
                  )),
              Positioned(
                  top: 280,
                  right: -500,
                  left: -229,
                  child: SizedBox(
                    height: 291,
                    width: 288,
                    child: Image.asset(
                      'assets/images/Image (5).png',
                      fit: BoxFit.contain,
                    ),
                  ))
            ],
          )),
    );
  }
}
