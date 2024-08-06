import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });
  final WidgetBuilder mobile, tablet, desktop;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 800) {
        return mobile(context);
      } else if (constraints.maxWidth < 1300) {
        return tablet(context);
      }
      return desktop(context);
    });
  }
}
