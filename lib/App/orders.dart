import 'package:flutter/material.dart';

class order_page extends StatefulWidget {
  const order_page({Key? key}) : super(key: key);

  @override
  State<order_page> createState() => _order_pageState();
}

class _order_pageState extends State<order_page> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text(
                    "Past Orders",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Upcoming",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
              indicatorColor: Colors.green,
            )),
        body: TabBarView(
          children: [
            Center(
              child: Text(
                "You do not have any past orders!",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset("assets/images/warning.jpg"),
                    height: 200,
                    width: 200,
                  ),
                  Text("No upcoming orders",
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
            )
          ],
        ),
      ));
}
