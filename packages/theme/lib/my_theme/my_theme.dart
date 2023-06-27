import 'package:flutter/material.dart';
import 'package:theme/my_theme/my_theme_data.dart';

class MyTheme extends StatelessWidget {
  final MyThemeData data;
  final Widget child;

  const MyTheme({
    super.key,
    required this.data,
    required this.child,
  });

  static MyThemeData of(BuildContext context) {
    _InheritedMyTheme? inheritedTheme =
        context.dependOnInheritedWidgetOfExactType<_InheritedMyTheme>();
    final brightness = MediaQuery.of(context).platformBrightness;
    return inheritedTheme?.theme.data ?? MyThemeData(brightness: brightness);
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedMyTheme(
      theme: this,
      child: Theme(
        data: data.themeData,
        child: child,
      ),
    );
  }
}

class _InheritedMyTheme extends InheritedWidget {
  final MyTheme theme;

  const _InheritedMyTheme({
    required super.child,
    required this.theme,
  });

  @override
  // ignore: override_on_non_overriding_member
  Widget wrap(BuildContext context, Widget child) =>
      MyTheme(data: theme.data, child: child);

  @override
  bool updateShouldNotify(_InheritedMyTheme oldWidget) {
    return oldWidget.theme.data != theme.data;
  }
}
