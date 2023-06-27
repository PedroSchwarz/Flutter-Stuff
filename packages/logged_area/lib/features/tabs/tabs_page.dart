import 'package:core_shared/core_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logged_area/features/tabs/bloc/tabs_bloc.dart';
import 'package:logged_area/features/tabs/bloc/tabs_event.dart';
import 'package:logged_area/features/tabs/bloc/tabs_state.dart';
import 'package:logged_area/features/tabs/widgets/tab_icon_button/tab_icon_button.dart';
import 'package:logged_area/routes.dart';
import 'package:settings/routes.dart';
import 'package:home/home.dart';
import 'package:theme/theme.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CoreInjection.locator.get<TabsBloc>()
        ..add(
          TabsStarted(),
        ),
      child: _Page(),
    );
  }
}

class _Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = MyTheme.of(context);
    final bloc = BlocProvider.of<TabsBloc>(context);

    return BlocListener(
      bloc: bloc,
      listener: (context, TabsState state) {
        switch (state.currentTab) {
          case TabSection.home:
            HomeModule.homeRoutes.home.pushTabChild(
              parentName: LoggedAreaModule.moduleName,
            );
          case TabSection.settings:
            SettingsModule.myAccountRoutes.myAccount.pushTabChild(
              parentName: LoggedAreaModule.moduleName,
            );
        }
      },
      child: MyTheme(
        data: theme,
        child: AppScaffold(
          bottomBar: BottomAppBar(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TabIconButton(bloc: bloc, tabSection: TabSection.home),
                TabIconButton(bloc: bloc, tabSection: TabSection.settings),
              ],
            ),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: RouterOutlet()),
            ],
          ),
        ),
      ),
    );
  }
}
