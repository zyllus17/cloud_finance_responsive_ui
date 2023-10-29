import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.sizeOf(context).width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.sizeOf(context).width < 1100 &&
      MediaQuery.sizeOf(context).width >= 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= 1100;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    // If our width is more than 1100 then we consider it a desktop
    if (size.width >= 1100) {
      return desktop;
    }
    // If width it less then 1100 and more then 850 we consider it as tablet
    else if (size.width >= 850 && tablet != null) {
      return tablet!;
    }
    // If width it less then 850 then it is considered mobile
    else {
      return mobile;
    }
  }
}
