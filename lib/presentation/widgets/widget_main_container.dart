import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';

class WidgetMainContainer extends StatelessWidget {
  final Widget child;
  const WidgetMainContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: DEFAULT_SPACE,
        vertical: DEFAULT_SPACE / 2,
      ),
      child: child,
    );
  }
}
