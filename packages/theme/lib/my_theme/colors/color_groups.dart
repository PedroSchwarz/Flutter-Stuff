import 'dart:ui';

class CoreGroup {
  final ContextGroup context;
  final BackgroundGroup background;
  final BaseGroup base;
  final DividerGroup divider;
  final ElementGroup element;
  final StatusGroup status;
  final TextGroup text;

  const CoreGroup({
    required this.context,
    required this.background,
    required this.base,
    required this.divider,
    required this.element,
    required this.status,
    required this.text,
  });
}

class ContextGroup {
  final Color primary;
  final Color overPrimary;
  final Color primaryDarken;
  final Color primaryHover;
  final Color secondary;
  final Color secondaryDarken;

  const ContextGroup({
    required this.primary,
    required this.overPrimary,
    required this.primaryDarken,
    required this.primaryHover,
    required this.secondary,
    required this.secondaryDarken,
  });
}

class BackgroundGroup {
  final Color hover;
  final Color overlay;
  final Color primary;
  final Color secondary;
  final Color tertiary;

  const BackgroundGroup({
    required this.hover,
    required this.overlay,
    required this.primary,
    required this.secondary,
    required this.tertiary,
  });
}

class BaseGroup {
  final Color disabled;
  final Color overDisabled;
  final Color primary;
  final Color primaryDarken;
  final Color secondary;
  final Color overSecondary;

  const BaseGroup({
    required this.disabled,
    required this.overDisabled,
    required this.primary,
    required this.primaryDarken,
    required this.secondary,
    required this.overSecondary,
  });
}

class DividerGroup {
  final Color primary;

  const DividerGroup({required this.primary});
}

class ElementGroup {
  final Color disabled;
  final Color negative;
  final Color onError;
  final Color onSuccess;
  final Color placeholder;
  final Color primary;
  final Color secondary;

  const ElementGroup({
    required this.disabled,
    required this.negative,
    required this.onError,
    required this.onSuccess,
    required this.placeholder,
    required this.primary,
    required this.secondary,
  });
}

class StatusGroup {
  final Color alert;
  final Color alertBackground;
  final Color info;
  final Color infoBackground;
  final Color negative;
  final Color negativeBackground;
  final Color positive;
  final Color positiveBackground;

  const StatusGroup({
    required this.alert,
    required this.alertBackground,
    required this.info,
    required this.infoBackground,
    required this.negative,
    required this.negativeBackground,
    required this.positive,
    required this.positiveBackground,
  });
}

class TextGroup {
  final Color disabled;
  final Color negative;
  final Color onSuccess;
  final Color placeholder;
  final Color primary;
  final Color secondary;

  const TextGroup({
    required this.disabled,
    required this.negative,
    required this.onSuccess,
    required this.placeholder,
    required this.primary,
    required this.secondary,
  });
}
