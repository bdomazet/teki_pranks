import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RowElement extends StatelessWidget {
  const RowElement({
    required this.onTap,
    required this.image,
    super.key,
  });

  final String image;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    final double boxSize = MediaQuery.of(context).size.width * 0.40;
    return SizedBox(
      width: boxSize,
      height: boxSize,
      child: GestureDetector(
        onTap: () {
          HapticFeedback.lightImpact();
          onTap();
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            image,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
