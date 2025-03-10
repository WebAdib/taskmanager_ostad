import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/assets_path.dart';

class ScreenBackground extends StatefulWidget {
  const ScreenBackground({super.key, required this.child});

  final Widget child;

  @override
  State<ScreenBackground> createState() => _ScreenBackgroundState();
}

class _ScreenBackgroundState extends State<ScreenBackground> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          width: double.maxFinite,
          height: double.maxFinite,
          AssetsPath.backgroundSVG,
          fit: BoxFit.cover,
        ),
        SafeArea(child: widget.child),
      ],
    );
  }
}
