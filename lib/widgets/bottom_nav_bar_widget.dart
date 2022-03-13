import 'package:flutter/cupertino.dart';
import 'package:maze/widgets/nav_bar_item_widget.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar(
      {Key? key, required this.changePageIndex, required this.selectedIndex})
      : super(key: key);
  int selectedIndex;
  Function(int, String) changePageIndex;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: true,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavBarItem(
              index: 0,
              navItemName: "Messages",
              navItemIcon: CupertinoIcons.bubble_left_bubble_right_fill,
              changePageIndex: changePageIndex,
              selectedIndex: selectedIndex,
            ),
            NavBarItem(
              index: 1,
              navItemName: "Notification",
              navItemIcon: CupertinoIcons.bell_fill,
              changePageIndex: changePageIndex,
              selectedIndex: selectedIndex,
            ),
            NavBarItem(
              index: 2,
              navItemName: "Calls",
              navItemIcon: CupertinoIcons.phone_fill,
              changePageIndex: changePageIndex,
              selectedIndex: selectedIndex,
            ),
            NavBarItem(
              index: 3,
              navItemName: "Contacts",
              navItemIcon: CupertinoIcons.person_2_fill,
              changePageIndex: changePageIndex,
              selectedIndex: selectedIndex,
            ),
          ],
        ),
      ),
    );
  }
}
