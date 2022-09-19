import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';


void main() async {
  runApp(MaterialApp(
    home: Api(),
    debugShowCheckedModeBanner: false,
  ));
}

class Api extends StatefulWidget {
  const Api({Key? key}) : super(key: key);

  @override
  State<Api> createState() => _ApiState();
}

class _ApiState extends State<Api> {
  List listMain = [ ];
  // Map firstMap = {
  //   "اسم الطالب الاول":{
  //     'score': "555"
  //   },
  //   "اسم الطالب الثاني":{
  //     'score': "555"
  //   },
  //   "اسم الطالب الثالث":{
  //     'score': "555"
  //   },
  //   "اسم الطالب الرابع":{
  //     'score': "555"
  //   },
  //
  // };
  Future getData() async{
    var url=Uri.parse("http://localhost:5000/");
    Response response= await get(url);

    String body =response.body;

    List<dynamic> list1=json.decode(body);
    print(list1);

    for (int i=0; i<list1.length; i++){
      setState(() {
        listMain.add(list1[i]);
      });
    }

  }
  // Future Add_data() async {
  //   var url = Uri.parse("http://localhost:4000/aymn/add");
  //   Map<String, String> headers = {"Content-type": "application/json"};
  //
  //   String json = '{"user": "aymnsaad",'
  //       ' "score": "12",'
  //       ' }';
  //   // make POST request
  //   Response response = await post(url, headers: headers, body: json);
  //   // check the status code for the result
  //   int statusCode = response.statusCode;
  //   // this API passes back the id of the new item added to the body
  //   String body1 = response.body;
  //   var data = jsonDecode(body1);
  //   print(data);
  //   var res = data["code"];
  //
  //   if (res == null) {}
  // }
  @override
  void initState() {
    super.initState();
    getData();

  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
                padding: EdgeInsets.only(right: 10),
                child: Container(width: MediaQuery.of(context).size.height,
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(scrollDirection: Axis.vertical,
                      itemCount: listMain.length,
                      itemBuilder: (BuildContext , int index){
                        return firstCard(
                            (listMain[index]['name']),
                            (listMain[index]['phone']));
                      }),)) ,


          ]),
    );
  }

  Padding firstCard(String score, String description) {
    return Padding(padding: EdgeInsets.all( 20),
        child:   Container(height: 100,width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),color: Colors.yellow,
            ),child: Center(child:  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(score,style: TextStyle(fontWeight: FontWeight.w600,color: Colors.red,fontSize: 20)),
                Text(
                  description,
                  style: TextStyle(
                      fontWeight: FontWeight.w900, color: Colors.black54, fontSize: 20),
                ),
              ],
            ),)
        )
    );
  }
}
