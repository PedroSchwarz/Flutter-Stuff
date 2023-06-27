import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logged_area/features/tabs/bloc/tabs_bloc.dart';
import 'package:logged_area/features/tabs/bloc/tabs_event.dart';
import 'package:logged_area/features/tabs/bloc/tabs_state.dart';
import 'package:logged_area/features/tabs/widgets/tab_icon_button/tab_icon_button_config.dart';
import 'package:theme/my_theme/my_theme.dart';

class TabIconButton extends StatelessWidget with TabIconButtonConfig {
  final TabsBloc bloc;
  final TabSection tabSection;

  const TabIconButton({
    super.key,
    required this.bloc,
    required this.tabSection,
  });

  @override
  Widget build(BuildContext context) {
    final theme = MyTheme.of(context);

    return Expanded(
      child: BlocBuilder(
        bloc: bloc,
        builder: (context, TabsState state) {
          return TextButton(
            onPressed: () => bloc.add(TabsSelected(selectedTab: tabSection)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  getIconFromTabSection(tabSection),
                  color: state.currentTab == tabSection
                      ? theme.colors.core.context.primary
                      : theme.colors.core.element.disabled,
                  size: theme.sizes.spacing.x600,
                ),
                Text(
                  getLabelFromTabSection(tabSection),
                  style: theme.typography.p5,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
