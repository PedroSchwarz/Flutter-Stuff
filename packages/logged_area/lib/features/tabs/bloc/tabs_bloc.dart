import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logged_area/features/tabs/bloc/tabs_event.dart';
import 'package:logged_area/features/tabs/bloc/tabs_state.dart';

class TabsBloc extends Bloc<TabsEvent, TabsState> {
  TabsBloc() : super(const TabsState()) {
    on<TabsStarted>(
      (event, emit) {
        emit(const TabsState());
      },
    );
    on<TabsSelected>(
      (event, emit) {
        emit(TabsState(currentTab: event.selectedTab));
      },
    );
  }
}
