import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:maze/helpers.dart';
import 'package:maze/theme.dart';
import 'package:maze/widgets/widgets.dart';
import '../pages/pages.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  String _selectedAppBarTitle = "Messages";
  changePageIndex(int index, String title) {
    setState(() {
      _selectedIndex = index;
      _selectedAppBarTitle = title;
    });
  }

  final pages = [
    MessagesPage(),
    CallsPage(),
    ContactsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          _selectedAppBarTitle,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            if (kDebugMode) {
              print("search");
            }
          },
          child: Container(
            padding: EdgeInsets.all(5),
            child: Icon(
              CupertinoIcons.search,
              color: brightness == Brightness.light
                  ? AppColors.iconLight
                  : AppColors.iconDark,
            ),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 8),
            child: Avatar.small(
              url: Helpers.randomPictureUrl(),
            ),
          )
        ],
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        changePageIndex: changePageIndex,
      ),
    );
  }
}
