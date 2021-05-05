import 'package:flutter/material.dart';

class Groups extends StatelessWidget {
  final appBar = AppBar(
    elevation: 5,
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Icon(
          Icons.search,
          size: 30,
          color: Colors.black,
        ),
      )
    ],
    backgroundColor: Colors.grey[200],
  );

  @override
  Widget build(BuildContext context) {
    final appBarHeight = appBar.preferredSize.height;
    final deviceHeight = MediaQuery.of(context).size.height;
    final statusBarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Text("Groups"),
      ),
    );
  }
}
