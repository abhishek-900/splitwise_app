import 'package:flutter/material.dart';
import 'package:splitwise/pages/account.dart';

import 'package:splitwise/pages/friends.dart';
import 'package:splitwise/pages/groups.dart';

class BottomNavigationTab extends StatefulWidget {
  @override
  _BottomNavigationTabState createState() => _BottomNavigationTabState();
}

class _BottomNavigationTabState extends State<BottomNavigationTab> {
  int _index = 0;

  final List<Widget> _pages = [Groups(), Friends(), Account()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[600],
          elevation: 3,
          title: Text(
            "SplitPay",
            style: TextStyle(fontSize: 22),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Icon(Icons.notifications),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(Icons.more_vert),
            )
          ],
        ),
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
