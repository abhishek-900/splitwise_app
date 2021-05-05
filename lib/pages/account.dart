import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var height = MediaQuery.of(context).padding.top;
    // print(height);
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          expandedHeight: 95,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              "Account",
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                letterSpacing: 1.2,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  maxRadius: 35,
                  minRadius: 25,
                  backgroundColor: Colors.red,
                ),
                Column(
                  children: [
                    Text("Abhishek Singh",
                        style: TextStyle(
                          fontSize: 16,
                        )),
                    Text("Test@gmail.com....",
                        style: TextStyle(
                          fontSize: 16,
                        ))
                  ],
                ),
                Icon(
                  Icons.edit,
                  size: 30,
                )
              ],
            ),
            Divider(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.keyboard_arrow_right,
                  size: 30,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Logout",
                  style: TextStyle(fontSize: 22),
                )
              ],
            )
          ],
        ))
      ],
    ));
  }
}
