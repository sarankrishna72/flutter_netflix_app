import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';

import '../../../core/constants.dart';

ValueNotifier<int> bottomNavbarCurrentIndex = ValueNotifier(0);
ValueNotifier<bool> isShowSubMenu = ValueNotifier(true);

class WidgetBottomNavigation extends StatelessWidget {
  const WidgetBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: bottomNavbarCurrentIndex,
        builder: (BuildContext context, int currentIndex, _) {
          return BottomNavigationBar(
            currentIndex: currentIndex,
            selectedItemColor: DEFAULT_NAVIGATION_SELECTED_ICON_COLOR,
            onTap: (int index) {
              bottomNavbarCurrentIndex.value = index;
              isShowSubMenu.value = true;
            },
            unselectedItemColor: DEFAULT_NAVIGATION_UNSELECTED_ICON_COLOR,
            type: BottomNavigationBarType.fixed,
            backgroundColor: BACKGROUND_COLOR,
            selectedIconTheme: const IconThemeData(
                color: DEFAULT_NAVIGATION_SELECTED_ICON_COLOR),
            unselectedIconTheme: const IconThemeData(
                color: DEFAULT_NAVIGATION_UNSELECTED_ICON_COLOR),
            iconSize: DEFAULT_BOTTOM_MENU_ICON_SIZE,
            selectedFontSize: DEFAULT_BOTTOM_NAVIGATION_FONT_SIZE,
            unselectedFontSize: DEFAULT_BOTTOM_NAVIGATION_FONT_SIZE,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.collections),
                label: 'New & Hot',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.emoji_emotions),
                label: 'Fast Laughs',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.arrow_circle_down),
                label: 'Downloads',
              ),
            ],
          );
        });
  }
}
