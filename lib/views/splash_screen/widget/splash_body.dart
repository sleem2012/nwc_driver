import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../shared/constants.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Animate(
          onPlay: (controller) => controller
            ..repeat(
              period: const Duration(seconds: 2),
            ),
          effects: const [FadeEffect()],
          child: Image.asset(
            Constant.appLogo,
            // fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}
