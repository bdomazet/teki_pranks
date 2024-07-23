import 'package:flutter/material.dart';

extension ShowSnackbarExtension on BuildContext {
  void showSnackBar({required String content}) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(content),
        ),
      );
  }
}
