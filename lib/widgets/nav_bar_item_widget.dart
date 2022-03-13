import 'package:flutter/material.dart';
import 'package:maze/theme.dart';

class NavBarItem extends StatelessWidget {
  final String navItemName;
  final IconData navItemIcon;
  final int index;
  int selectedIndex;
  Function(int, String) changePageIndex;
  NavBarItem(
      {Key? key,
      required this.navItemName,
      required this.navItemIcon,
      required this.index,
      required this.selectedIndex,
      required this.changePageIndex})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        changePageIndex(index, navItemName);
      },
      child: SizedBox(
        height: 70,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              navItemIcon,
              size: 20,
              color: index == selectedIndex ? AppColors.secondary : null,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              navItemName,
              style: index == selectedIndex
                  ? const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondary,
                    )
                  : const TextStyle(fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }
}
