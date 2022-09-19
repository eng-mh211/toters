import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class testing extends StatefulWidget {
  const testing({Key? key}) : super(key: key);

  @override
  State<testing> createState() => _testingState();
}

class _testingState extends State<testing> {
  Future getData() async{
    var url =Uri.parse("http://localhost:4000/toters/user_log");
    Response response= await get(url);

    String body = response.body;

    List<dynamic>list2=json.decode(body);


  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.grey,
          height: 300,
          width: 300,
          child: Text(""),
        ),
      ),
    );
  }
}
