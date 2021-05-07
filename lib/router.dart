import 'package:flutter/material.dart';
import 'package:splitwise/bottomNavigationTab.dart';
import 'package:splitwise/pages/account.dart';
import 'package:splitwise/pages/expense.dart';
import 'package:splitwise/pages/friends.dart';
import 'package:splitwise/pages/groups.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (context) => BottomNavigationTab());
    case 'Friends':
      return MaterialPageRoute(builder: (context) => Friends());
    case 'Account':
      return MaterialPageRoute(builder: (context) => Account());
    case 'Groups':
      return MaterialPageRoute(builder: (context) => Groups());
    case 'Expense':
      return MaterialPageRoute(builder: (context) => Expense());
    default:
      return MaterialPageRoute(builder: (context) => BottomNavigationTab());
  }
}
