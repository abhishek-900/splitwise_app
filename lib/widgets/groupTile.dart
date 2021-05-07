import 'package:flutter/material.dart';

class GroupTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Ink(
      color: Colors.white,
      child: ListTile(
        leading: CircleAvatar(
          maxRadius: 25,
          minRadius: 20,
          //backgroundColor: Colors.grey,
        ),
        isThreeLine: true,
        title: Text("Poker"),
        subtitle: Text("John, Smual, Philip +3 more"),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Owes you"),
            SizedBox(
              height: 3,
            ),
            Text(
              "300\$",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
