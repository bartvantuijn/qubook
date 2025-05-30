import 'package:flutter/material.dart';

class GradientWidget extends StatelessWidget {
  final Widget child;

  const GradientWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: Theme.of(context).brightness == Brightness.dark ? [Colors.grey[900]!, Colors.black] : [Colors.grey[100]!, Colors.white],
            ),
          ),
        ),
        child,
      ],
    );
  }
}