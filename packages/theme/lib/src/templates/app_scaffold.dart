import 'package:flutter/material.dart';
import 'package:theme/my_theme/my_theme.dart';

class AppScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget child;
  final Widget? bottomBar;

  const AppScaffold({
    super.key,
    this.appBar,
    required this.child,
    this.bottomBar,
  });

  @override
  Widget build(BuildContext context) {
    final theme = MyTheme.of(context);

    return MyTheme(
      data: theme,
      child: Scaffold(
        appBar: appBar,
        backgroundColor: theme.colors.core.background.secondary,
        body: SafeArea(
          child: child,
        ),
        bottomNavigationBar: bottomBar,
      ),
    );
  }
}
