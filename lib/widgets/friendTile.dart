import 'package:flutter/material.dart';

class FriendTile extends StatelessWidget {
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
        title: Text("Jonathan Doe"),
        subtitle: Text("+4100 xxxx xx"),
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
