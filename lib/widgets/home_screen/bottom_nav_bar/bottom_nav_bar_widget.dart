import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maze/widgets/home_screen/bottom_nav_bar/nav_bar_item_widget.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar(
      {Key? key, required this.changePageIndex, required this.selectedIndex})
      : super(key: key);
  int selectedIndex;
  Function(int, String) changePageIndex;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0),
      child: SafeArea(
        top: false,
        bottom: true,
        child: Padding(
          padding: EdgeInsets.only(top: 16, right: 8, left: 8),
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
                navItemName: "Contacts",
                navItemIcon: CupertinoIcons.person_2_fill,
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
            ],
          ),
        ),
      ),
    );
  }
}
