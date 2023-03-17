import 'package:flutter/material.dart';

import '../../custom_widgets/background_gradient.dart';
import '../../utils/constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: BackgroundGradient(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Center(
            child: Image.asset(smilingPoopImage),
          ),
        ),
      ),
    );
  }
}
