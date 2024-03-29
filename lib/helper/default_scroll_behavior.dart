import 'package:flutter/material.dart';

class DefaultScrollBehaviour extends ScrollBehavior {
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    switch (getPlatform(context)) {
      // case TargetPlatform.iOS:
      // case TargetPlatform.macOS:
      case TargetPlatform.android:
        return const BouncingScrollPhysics();
      // case TargetPlatform.fuchsia:
      // case TargetPlatform.linux:
      // case TargetPlatform.windows:
      // return const ClampingScrollPhysics();
      default:
        return super.getScrollPhysics(context);
    }
  }
}
