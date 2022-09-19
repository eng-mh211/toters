import 'package:flutter/material.dart';
import 'package:toters/App/Home.dart';

class Resturant_Card extends StatefulWidget {
  final String C_Name;
  final String C_Rate;
  final String C_Time;
  final String C_Dis;
  final String C_Image;

  Resturant_Card({
    required this.C_Name,
    required this.C_Rate,
    required this.C_Time,
    required this.C_Dis,
    required this.C_Image,
  });

  @override
  State<Resturant_Card> createState() => _Resturant_CardState();
}

class _Resturant_CardState extends State<Resturant_Card> {
  bool click=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.asset(widget.C_Image,height: 225,width: MediaQuery.of(context).size.height,fit: BoxFit.cover,),
                  Positioned(
                    bottom: -10,
                    right: 10,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey.shade200,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red.withOpacity(0.5),
                              offset: Offset(0, 0),
                              spreadRadius: 5,
                              blurRadius: 6,
                            )
                          ]),
                      child: Column(
                        children: [
                          Text(widget.C_Time,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          Text(
                            "Min",
                            style: TextStyle(fontSize: 12, color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      top: 35,
                      right: 15,
                      child: ElevatedButton(
                        //new button idea??(new Info)
                          style: ElevatedButton.styleFrom(
                              shape: CircleBorder(), primary: Colors.red),
                          onPressed: () {
                            setState(() {
                              click = !click;
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon((click == true)
                                ? Icons.favorite_border
                                : Icons.favorite),
                          )) //here...!
                  ), //   :)
                  Positioned(
                    top: 35,
                    left: 15,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.shade200,
                      ),
                      child: GestureDetector(
                        child: Icon(Icons.arrow_back),
                        onTap: () {
                          Navigator.of(context).pop(MaterialPageRoute(
                              builder: (context) => Home_Page()));
                        },
                      ),
                    ),
                  ),
                ],
              ), //here!
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(6)),
                  Text(
                    widget.C_Name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(6)),
                  Text(
                    widget.C_Dis,
                    style: TextStyle(
                        fontSize: 14, color: Colors.black.withOpacity(0.5)),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(6)),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.redAccent.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          Icon(Icons.monetization_on,size: 16,color: Colors.redAccent,),
                          Text(
                            "30\% cash back",
                            style: TextStyle(fontSize: 10,color: Colors.redAccent),
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(left: 5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blueAccent.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          Icon(Icons.add_circle_outline,size: 16,color: Colors.blueAccent,),
                          Text(
                            "Win some points..!",
                            style: TextStyle(fontSize: 10,color: Colors.blueAccent),
                          ),
                        ],
                      )),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(6)),
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Text(
                    widget.C_Rate,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.red,
                            size: 30,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.red,
                            size: 30,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.red,
                            size: 30,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.red,
                            size: 30,
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.red,
                            size: 30,
                          ),
                        ],
                      ),
                      Text("Based on Rating 1200")
                    ],
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 55)),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.red,
                  )
                ],
              ),
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  thickness: 2,
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
