import 'dart:ui';

import 'package:theme/my_theme/colors/color_groups.dart';

class MyThemeColors {
  final CoreGroup core;

  final Brightness brightness;

  static const _lightCore = CoreGroup(
    context: ContextGroup(
      primary: Color(0xFFE02B57),
      overPrimary: Color(0xFFFFFFFF),
      primaryDarken: Color(0xFFC7123E),
      primaryHover: Color(0xFFC7123E),
      secondary: Color(0xFFFFF2F5),
      secondaryDarken: Color(0xFFFFD9E2),
    ),
    background: BackgroundGroup(
      hover: Color(0x52B9BAC7),
      overlay: Color(0x99000000),
      primary: Color(0xFFF5F6FA),
      secondary: Color(0xFFFFFFFF),
      tertiary: Color(0xFFE3E4EB),
    ),
    base: BaseGroup(
      disabled: Color(0xFFC9CAD4),
      overDisabled: Color(0xFF9599A6),
      overSecondary: Color(0xFFFFFFFF),
      primary: Color(0xFFFFFFFF),
      primaryDarken: Color(0xFFF5F6FA),
      secondary: Color(0xFF757680),
    ),
    divider: DividerGroup(primary: Color(0xFFE3E4EB)),
    element: ElementGroup(
      disabled: Color(0xFFC9CAD4),
      negative: Color(0xFFFFFFFF),
      onError: Color(0xFFCD1A1A),
      onSuccess: Color(0xFF008061),
      placeholder: Color(0xFF9599A6),
      primary: Color(0xFF2F2F33),
      secondary: Color(0xFF757680),
    ),
    status: StatusGroup(
      alert: Color(0xFF6B3D00),
      alertBackground: Color(0xFFFFE5C2),
      info: Color(0xFF004C99),
      infoBackground: Color(0xFFE0F1FF),
      negative: Color(0xFF9A1414),
      negativeBackground: Color(0xFFFCE4E4),
      positive: Color(0xFF0C5F2C),
      positiveBackground: Color(0xFFD6FFDF),
    ),
    text: TextGroup(
      disabled: Color(0xFFC9CAD4),
      negative: Color(0xFFFFFFFF),
      onSuccess: Color(0xFF008061),
      placeholder: Color(0xFF9599A6),
      primary: Color(0xFF2F2F33),
      secondary: Color(0xFF757680),
    ),
  );

  static const _darkCore = CoreGroup(
    context: ContextGroup(
      overPrimary: Color(0xFFFFFFFF),
      primary: Color(0xFFE02B57),
      primaryDarken: Color(0xFFC7123E),
      primaryHover: Color(0xFFC7123E),
      secondary: Color(0xFFFFF2F5),
      secondaryDarken: Color(0xFFFFD9E2),
    ),
    background: BackgroundGroup(
      hover: Color(0x52757680),
      overlay: Color(0x99000000),
      primary: Color(0xFF27272A),
      secondary: Color(0xFF2F2F33),
      tertiary: Color(0xFF474952),
    ),
    base: BaseGroup(
      disabled: Color(0xFF5C5D66),
      overDisabled: Color(0xFF9599A6),
      overSecondary: Color(0xFFFFFFFF),
      primary: Color(0xFF2F2F33),
      primaryDarken: Color(0xFF1F1F1F),
      secondary: Color(0xFF474952),
    ),
    divider: DividerGroup(
      primary: Color(0xFF1F1F1F),
    ),
    element: ElementGroup(
      disabled: Color(0xFF5C5D66),
      negative: Color(0xFF000000),
      onError: Color(0xFFF73939),
      onSuccess: Color(0xFF16B690),
      placeholder: Color(0xFF7E818C),
      primary: Color(0xFFFFFFFF),
      secondary: Color(0xFF757680),
    ),
    status: StatusGroup(
      alert: Color(0xFFFFE5C2),
      alertBackground: Color(0xFF64461C),
      info: Color(0xFFE0F1FF),
      infoBackground: Color(0xFF215182),
      negative: Color(0xFFFCE4E4),
      negativeBackground: Color(0xFF862C2C),
      positive: Color(0xFFD6FFE0),
      positiveBackground: Color(0xFF27583C),
    ),
    text: TextGroup(
      disabled: Color(0xFF5C5D66),
      negative: Color(0xFF000000),
      onSuccess: Color(0xFF16B690),
      placeholder: Color(0xFF7E818C),
      primary: Color(0xFFFFFFFF),
      secondary: Color(0xFFB9BAC7),
    ),
  );

  const MyThemeColors({
    required this.core,
    required this.brightness,
  });

  MyThemeColors.light() : this(core: _lightCore, brightness: Brightness.light);

  MyThemeColors.dark() : this(core: _darkCore, brightness: Brightness.dark);
}
