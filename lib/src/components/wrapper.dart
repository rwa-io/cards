import 'package:cards/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({required this.child, super.key});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Assets.background.top.image(),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Assets.background.bottom1.image(),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Assets.background.bottom2.image(),
          ),
          SafeArea(
            minimum: const EdgeInsets.fromLTRB(20, 71, 20, 49),
            child: child,
          ),
        ],
      ),
    );
  }
}
