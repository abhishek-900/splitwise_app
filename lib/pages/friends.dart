import 'package:flutter/material.dart';
import 'package:splitwise/widgets/friendTile.dart';

class Friends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 160,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '\u{20B9}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                    ),
                    Text("Total Balance:\$1440")
                  ],
                ),
              ),
              Container(
                width: 140,
                height: 50,
                child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "Expense");
                    },
                    child: Text(
                      "ADD EXPENSE",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    color: Colors.orange,
                    // padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ],
          ),
          SizedBox(height: 20),
          Card(
              elevation: 7,
              color: Colors.grey[300],
              child: Column(
                children: [
                  Container(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Owes Status",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8, right: 8, top: 5, bottom: 5),
                    child: FriendTile(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8, right: 8, top: 5, bottom: 5),
                    child: FriendTile(),
                  ),
                ],
              ))
        ],
      ),
    ));
  }
}
