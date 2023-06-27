class TabsState {
  final TabSection currentTab;

  const TabsState({this.currentTab = TabSection.home});
}

enum TabSection { home, settings }
