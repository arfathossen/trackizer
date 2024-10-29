import 'package:flutter/material.dart';
import 'package:gauge_indicator/gauge_indicator.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:trackizer_app/shared/constants_colors.dart';

class CircleProgressWidget extends StatelessWidget {
  const CircleProgressWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/Ellipse (5).png",
            ),
            fit: BoxFit.contain),
      ),
      height: 240,
      width: double.infinity,
      child: Stack(
        children: [
          const Center(
            child: AnimationCircleProgressWidget(),
          ),
          const _buildCircularImage(),
          Positioned(
            right: 10,
            left: 10,
            child: Center(
              child: Container(
                padding: const EdgeInsets.only(),
                width: double.infinity,
                height: 270,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  "assets/images/Ellipse (4).png",
                ),
              ),
            ),
          ),
          const Positioned(
            top: 5,
            right: 30,
            left: 30,
            child: Center(
              child: MainCircleItemsWidget(),
            ),
          ),
          const _CircleSmallButton(),
        ],
      ),
    );
  }
}

class AnimationCircleProgressWidget extends StatelessWidget {
  const AnimationCircleProgressWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AnimatedRadialGauge(
      /// The animation duration.
      duration: Duration(seconds: 2),
      curve: Curves.elasticOut,
      radius: 120,
      value: 90,
      axis: GaugeAxis(
        max: 100,

        /// Render the gauge as a 180-degree arc.
        degrees: 280,

        /// Set the background color and axis thickness.
        style: GaugeAxisStyle(
          thickness: 10,
          background: Color(0xFFDFE2EC),
          segmentSpacing: 4,
        ),

        /// Define the progress bar (optional).
        progressBar: GaugeProgressBar.rounded(
          color: Color(0xFFFF7966),
        ),

        /// Define axis segments (optional).
        // segments: [
        //   GaugeSegment(
        //     from: 0,
        //     to: 33.3,
        //     color: Color(0xFFD9DEEB),
        //     cornerRadius: Radius.zero,
        //   ),
        //   GaugeSegment(
        //     from: 33.3,
        //     to: 66.6,
        //     color: Color(0xFFD9DEEB),
        //     cornerRadius: Radius.zero,
        //   ),
        //   GaugeSegment(
        //     from: 66.6,
        //     to: 100,
        //     color: Color(0xFFD9DEEB),
        //     cornerRadius: Radius.zero,
        //   ),
        // ],
      ),
    );
  }
}

class MainCircleItemsWidget extends StatelessWidget {
  const MainCircleItemsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 180,
        height: 270,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const CircleLogo(),
            Text(
              '\$1,235',
              style: TextStyle(
                  color: Constants.secondaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              'This month bills',
              style: TextStyle(
                  color: Constants.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 32,
              width: 100,
              decoration: BoxDecoration(
                  color: const Color(0xFF4E4E61),
                  borderRadius: BorderRadius.circular(16)),
              child: Center(
                child: Text(
                  'See your budget',
                  style: TextStyle(
                      color: Constants.secondaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 8),
                ),
              ),
            ),
          ],
        ));
  }
}

class CircleLogo extends StatelessWidget {
  const CircleLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      height: 19,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Frame.png',
              height: 19,
              width: 17,
            ),
            const SizedBox(
              width: 5,
            ),
            Center(
              child: Text(
                'TRACKIZER',
                style: TextStyle(
                    color: Constants.secondaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 10),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _CircleSmallButton extends StatelessWidget {
  const _CircleSmallButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      right: 0,
      child: HugeIcon(
        icon: HugeIcons.strokeRoundedSetting07,
        size: 24,
        color: Constants.primaryColor,
      ),
    );
  }
}

class _buildCircularImage extends StatelessWidget {
  const _buildCircularImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 190,
        height: 250,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Image.asset("assets/images/Ellipse.png"),
      ),
    );
  }
}
