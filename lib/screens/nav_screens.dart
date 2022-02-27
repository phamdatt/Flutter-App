import 'package:flutter/material.dart';
import 'package:doric/screens/HomeScreenFb.dart';

class NavScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NavScreenState();
  }
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> screens = [
    HomeScreenFb(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold()
  ];
  final List<IconData> icons = const [
    Icons.home,
    Icons.ondemand_video,
    Icons.account_box_outlined,
    Icons.menu
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: icons.length,
        child: Scaffold(
          body:IndexedStack(
            index:_selectedIndex,
            children: screens,
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: CustomTabBar(
                icons: icons,
                selectedIndex: _selectedIndex,
                onTap: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                }),
          ),
        ));
  }
}

class CustomTabBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;
  const CustomTabBar(
      {Key? key,
      required this.icons,
      required this.selectedIndex,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.blue, width: 3))),
      tabs: icons
          .asMap()
          .map((key, value) => MapEntry(
                key,
                Tab(
                  icon: Icon(value,
                      color: key == selectedIndex ? Colors.blue : Colors.black),
                ),
              ))
          .values
          .toList(),
      onTap: onTap,
    );
  }
}
