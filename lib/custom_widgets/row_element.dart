import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RowElement extends StatefulWidget {
  const RowElement({
    required this.onTap,
    required this.image,
    super.key,
  });

  final String image;
  final Function onTap;

  @override
  State<RowElement> createState() => _RowElementState();
}

class _RowElementState extends State<RowElement> with TickerProviderStateMixin {
  late final AnimationController imageAnimationController = AnimationController(
    vsync: this,
    duration: const Duration(
      milliseconds: 110,
    ),
  );

  late final Animatable<double> imageRotationTween = Tween<double>(
    begin: 0,
    end: 100,
  ).chain(CurveTween(curve: Curves.bounceOut));

  double get imageRotation =>
      imageRotationTween.evaluate(imageAnimationController);

  @override
  void initState() {
    imageAnimationController.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  void dispose() {
    imageAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () async {
          HapticFeedback.lightImpact();
          widget.onTap();
          await imageAnimationController.forward();
          await imageAnimationController.reverse();
        },
        child: Transform.rotate(
          angle: imageRotation,
          child: Image.asset(
            widget.image,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
