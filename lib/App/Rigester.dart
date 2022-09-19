import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'bottom_Nav.dart';
import 'dart:convert';

class Rig extends StatefulWidget {
  const Rig({Key? key}) : super(key: key);

  @override
  State<Rig> createState() => _RigState();
}

class _RigState extends State<Rig> {
  final _username = TextEditingController();
 // final _password = TextEditingController(); //FUTUER UES\\
  final _sherecode = TextEditingController();
  final _phonenum = TextEditingController();


  Future getData() async{
    var url =Uri.parse("http://localhost:4000/toters/user_log");
    Response response= await get(url);

    String body = response.body;

    List<dynamic>list2=json.decode(body);


  }

  bool click = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white.withOpacity(0.95),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/images/logo.png",
                        height: 150,
                        width: 150,
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.deepOrange.withOpacity(0.3),
                          borderRadius: BorderRadiusDirectional.circular(50)),
                      child: TextFormField(
                        controller: _username,
                        cursorColor: Colors.red,
                        decoration: InputDecoration(
                          icon: Icon(Icons.person,color: Colors.white,),
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontSize: 18,color: Colors.white),
                          hintText: "Username",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.deepOrange.withOpacity(0.3),
                          borderRadius: BorderRadiusDirectional.circular(50)),
                      child: TextFormField(
                        controller: _phonenum,
                        cursorColor: Colors.red,
                        decoration: InputDecoration(
                          icon: Icon(Icons.call,color: Colors.white,),
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontSize: 18,color: Colors.white),
                          hintText: "Phone number",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          click = !click;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Do you have membership card..?",
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                              (click == false)
                                  ? Icons.arrow_drop_down_sharp
                                  : Icons.arrow_right,
                              color: Colors.deepOrange),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    if (click == false) ...[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.deepOrange.withOpacity(0.3),
                            borderRadius: BorderRadiusDirectional.circular(50)),
                        child: TextFormField(
                          cursorColor: Colors.red,
                          decoration: InputDecoration(
                            icon: Icon(Icons.code,color: Colors.white,),
                            border: InputBorder.none,
                            hintStyle: TextStyle(fontSize: 18,color: Colors.white),
                            hintText: "Shere code",
                          ),
                        ),
                      ),
                    ],
                    SizedBox(
                      height: 40,
                    ),
                    ///check for data
                    GestureDetector(
                      onTap: () {
                        setState(){

                        }
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Bottome_nav()));
                      },

                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.deepOrange.withOpacity(0.3),
                            borderRadius: BorderRadiusDirectional.circular(50)),
                        child: Text(
                          "Next",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 150,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
