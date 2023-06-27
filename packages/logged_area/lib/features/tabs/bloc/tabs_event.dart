import 'package:logged_area/features/tabs/bloc/tabs_state.dart';

abstract class TabsEvent {}

class TabsStarted extends TabsEvent {}

class TabsSelected extends TabsEvent {
  final TabSection selectedTab;

  TabsSelected({required this.selectedTab});
}
