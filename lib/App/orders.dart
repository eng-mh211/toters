import 'package:flutter/material.dart';

class order_page extends StatefulWidget {
  const order_page({Key? key}) : super(key: key);

  @override
  State<order_page> createState() => _order_pageState();
}

class _order_pageState extends State<order_page> {
  @override
  Widget build(BuildContext context) =>DefaultTabController(
      length: 2, child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            automaticallyImplyLeading: false,
            bottom: TabBar(tabs: [
              Tab(text: "Past Order",),
              Tab(text: "Upcoming",),
    ]),
  ),
    body: TabBarView(
      children: [
        Center(
          child:Text("You do not have any past orders!"),
        ),
        Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset("assets/images/warning.jpg"),
                height: 200,
                width: 200,
              ),
              Text("No upcoming orders")
            ],
          ),
        )


    ],
  ),
  ));
}
