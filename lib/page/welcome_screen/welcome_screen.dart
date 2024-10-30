import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:trackizer_app/page/welcome_screen/components/gradient_blur_container.dart';

import '../../components/title_logo_widget.dart';
import '../Subscription_info/subscription_screen.dart';
import '../auth/register/register_screen.dart';
import 'components/custom_button.widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    height: 30,
                    child: const Center(child: TitleLogoWidget()),
                  ),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 40,
                      ),
                      child: Text(
                        'Congue malesuada in ac justo, a tristique leo massa. Arcu leo leo urna risus.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
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
                            offset: const Offset(
                                0, 3), // Offset (horizontal, vertical)
                          ),
                        ],
                      ),
                      child: CustomButtonWidget(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterScreen()));
                          },
                          btnText: 'Get started',
                          btnTextColor: Colors.white,
                          btnColor: const Color(0xFFFF7966)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButtonWidget(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const SubscriptionScreen()));
                        },
                        btnText: 'I have an account',
                        btnTextColor: Colors.white,
                        btnColor: Colors.white24),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            ],
          ),
          const _Background()
        ],
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
    return Positioned(
      top: MediaQuery.sizeOf(context).height * 0.2,
      child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height * 0.5,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Frame_icon.png'),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                right: 0,
                top: MediaQuery.sizeOf(context).height * 0.2,
                child: const Opacity(
                  opacity: 0.4,
                  child: GlowingSunContainer(
                    glowColor: Colors.red,
                    child: SizedBox(
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
              ),
              // Positioned(
              //   top: 20,
              //   left: 20,
              //   child: SizedBox(
              //     height: 420,
              //     width: MediaQuery.sizeOf(context).width,
              //     child: Image.asset(
              //       'assets/images/Frame_icon.png',
              //       fit: BoxFit.fitWidth,
              //     ),
              //   ),
              // ),
              Positioned(
                  top: 0,
                  left: 0,
                  child: SizedBox(
                    height: 219,
                    // width: 208,
                    child: Image.asset(
                      'assets/images/Image (3).png',
                      fit: BoxFit.contain,
                    ),
                  )),
              Positioned(
                  top: MediaQuery.sizeOf(context).height * 0.3,
                  right: -1,
                  child: SizedBox(
                    height: 291,
                    // width: 288,
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
