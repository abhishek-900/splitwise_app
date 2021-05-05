import 'package:flutter/material.dart';
import 'package:splitwise/pages/account.dart';
import 'package:splitwise/pages/activity.dart';
import 'package:splitwise/pages/friends.dart';
import 'package:splitwise/pages/groups.dart';

class BottomNavigationTab extends StatefulWidget {
  @override
  _BottomNavigationTabState createState() => _BottomNavigationTabState();
}

class _BottomNavigationTabState extends State<BottomNavigationTab> {
  int _index = 0;

  final List<Widget> _pages = [Groups(), Friends(), Activity(), Account()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _index,
            onTap: (index) {
              setState(() {
                this._index = index;
              });
            },
            selectedItemColor: Colors.green[600],
            selectedIconTheme: IconThemeData(size: 28),
            unselectedItemColor: Colors.grey[400],
            elevation: 10,
            iconSize: 22,
            items: [
              BottomNavigationBarItem(
                title: Text(
                  "Groups",
                ),
                icon: Icon(
                  Icons.group,
                ),
              ),
              BottomNavigationBarItem(
                title: Text(
                  "Friends",
                ),
                icon: Icon(Icons.person),
              ),
              BottomNavigationBarItem(
                title: Text(
                  "Activity",
                ),
                icon: Icon(
                  Icons.image,
                ),
              ),
              BottomNavigationBarItem(
                title: Text(
                  "Account",
                ),
                icon: Icon(
                  Icons.account_circle,
                ),
              ),
            ]),
        body: _pages[_index]);
  }
}
