import 'package:flutter/material.dart';

import '../../../core/common/widgets/background_gradient.dart';
import '../../../core/theme/app_images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: BackgroundGradient(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Center(
            child: Image.asset(AppImages.smilingPoopImage),
          ),
        ),
      ),
    );
  }
}
