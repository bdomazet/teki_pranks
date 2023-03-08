import 'package:flutter/material.dart';

import '../constants/constants.dart';

class BackgroundGradient extends StatelessWidget {
  const BackgroundGradient({this.child, Key? key}) : super(key: key);
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: <double>[0.0, 0.9],
          colors: <Color>[
            blueColor,
            yellowColor,
          ],
        ),
      ),
      child: child,
    );
  }
}
