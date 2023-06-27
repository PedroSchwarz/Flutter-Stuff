import 'package:flutter/material.dart';
import 'package:logged_area/features/tabs/bloc/tabs_state.dart';

mixin TabIconButtonConfig {
  IconData getIconFromTabSection(TabSection tabSection) {
    switch (tabSection) {
      case TabSection.home:
        return Icons.home;
      case TabSection.settings:
        return Icons.settings;
    }
  }

  String getLabelFromTabSection(TabSection tabSection) {
    switch (tabSection) {
      case TabSection.home:
        return 'Home';
      case TabSection.settings:
        return 'Settings';
    }
  }
}
