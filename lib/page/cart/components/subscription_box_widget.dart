import 'package:flutter/material.dart';
import 'package:trackizer_app/page/cart/components/box_log_widget.dart';

class SubscriptionBoxContainerwidget extends StatelessWidget {
  const SubscriptionBoxContainerwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 40,
      width: 184,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SubscriptionsBoxLogoWidget(
            image: 'assets/images/Spotify Logo.png',
          ),
          SubscriptionsBoxLogoWidget(
            image: 'assets/images/YT Premium Lgoo.png',
          ),
          SubscriptionsBoxLogoWidget(
            image: 'assets/images/OneDrive Logo.png',
          ),
          SubscriptionsBoxLogoWidget(
            image: 'assets/images/Frame (1).png',
          ),
        ],
      ),
    );
  }
}
