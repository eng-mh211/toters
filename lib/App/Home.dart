import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:line_icons/line_icon.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';
import 'package:toters/App/Resturant.dart';


class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);
  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  List<CarouselItem> itemList = [
    CarouselItem(
      image: AssetImage("assets/resturants/kfc.png"),
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: AssetImage("assets/resturants/McDonald's_1968_logo.png"),
      onImageTap: (i) {},
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 300,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  Icon(
                    LineIcons.bell,
                    color: Colors.black,
                    size: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    LineIcons.filter,
                    color: Colors.black,
                    size: 30,
                  ),
                ],
              ),
            )
          ],
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: GestureDetector(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Delivering To",
                          style: TextStyle(color: Colors.black),
                        ),
                        Row(
                          children: [
                            Text("Baghdad, Iraq",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                            )
                          ],
                        )
                      ],
                    ),
                  )),
            ],
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0.5,
        ),
        backgroundColor: Colors.white,
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 7, left: 15, right: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Green",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                              fontSize: 24),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 10),
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadiusDirectional.circular(50),
                              border: Border.all(
                                color: Colors.green,
                                width: 1.5,
                              )),
                          child: Text(
                            "i",
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                for (int i = 0; i < 5; i++) lines(),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "10 more order by september to reach Gold",
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 12),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    CustomCarouselSlider(
                      items: itemList,
                      height: 190,
                      subHeight: 0,
                      width: MediaQuery.of(context).size.width * .8,
                      autoplay: true,
                      selectedDotColor: Colors.black,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        boxes1("assets/icons/Cart_3d.png", "Food"),
                        boxes1("assets/icons/Cart_3d.png", "Fresh"),
                        boxes1("assets/icons/Cart_3d.png", "Market"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        boxes2("assets/icons/Groceries_3d.png", "Shops"),
                        boxes2("assets/icons/Groceries_3d.png", "Rewards"),
                        boxes2("assets/icons/Groceries_3d.png", "Add Funds"),
                        boxes2("assets/icons/Groceries_3d.png", "TEST"),
                      ],
                    ),

                  ],
                ),
              ),
              Divider(
                thickness: 15,
                height: 50,
                color: Colors.grey.withOpacity(0.1),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, left: 15, right: 15),
                child: Column(
                  children: [
                    GestureDetector(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Weekly Discounts 📆",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios,size: 18,color: Colors.green,)
                            ],
                          ),
                          SizedBox(height: 8,),
                          Text("Get up to 50\% OFF on these selectd Resturant",style: TextStyle(color: Colors.black38),)
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              Container(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Go_To_resturant(
                            "assets/foods/bluehill.jpg",
                            "CheeseChilly",
                            "4.3",
                            "45-30",
                            "Full-Mael...\$\$"),
                        Go_To_resturant(
                            "assets/foods/rice_and_chicken.jpg",
                            "Rice and Chicken",
                            "4.6",
                            "40-30",
                            "The best meal with your family"),
                      ],
                    ),


                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, left: 15, right: 15),
                child: Column(
                  children: [
                    GestureDetector(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "New on Toters 🆕",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios,size: 18,color: Colors.green,)
                            ],
                          ),
                          SizedBox(height: 8,),
                          Text("Check out our lastest partners and thir incredible\nselection",style: TextStyle(color: Colors.black38),)
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              Container(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Go_To_resturant(
                            "assets/foods/hawkers.jpg",
                            "Burger",
                            "3.2",
                            "25",
                            "Check out our new meal"),
                        Go_To_resturant(
                            "assets/foods/noodles.jpg",
                            "Noodles",
                            "4.1",
                            "20-30",
                            "Are you single person try this"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Row lines() {
    return Row(
      children: [
        Container(
          height: 3,
          width: 28,
          color: Colors.grey.withOpacity(0.3),
        ),
        SizedBox(
          width: 2,
        ),
        Container(
          height: 3,
          width: 28,
          color: Colors.grey.withOpacity(0.3),
        ),
        SizedBox(
          width: 2,
        ),
      ],
    );
  }

  Container boxes1(String icon1, String text1) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      width: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(30),
        color: Colors.white.withOpacity(0.6),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 3,
              spreadRadius: 2)
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            icon1,
            scale: 2.3,
          ),
          Text(text1, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  Container boxes2(String icon2, String text2) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      width: 75,
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(20),
          color: Colors.white.withOpacity(0.6),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 3,
                spreadRadius: 2)
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            icon2,
            scale: 2.3,
          ),
          Text(
            text2,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }

  Container Go_To_resturant(String Card_Image, String Card_name,
      String Card_Rate, String Card_time, String Card_Data) {
    return Container(
      padding: EdgeInsets.all(8),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 150,
                width: 240,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.cyan,
                    image: DecorationImage(
                        image: AssetImage(
                          Card_Image,
                        ),
                        fit: BoxFit.cover)),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Resturant_Card(
                          C_Name: Card_name,
                          C_Rate: Card_Rate,
                          C_Dis: Card_Data,
                          C_Time: Card_time,
                          C_Image: Card_Image,
                        )));
                  },
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
              ),
              Positioned(
                bottom: -10,
                right: 10,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey.shade200,
                  ),
                  child: Column(
                    children: [
                      Text(
                        Card_time,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Min",
                        style: TextStyle(fontSize: 12, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Text(
            Card_name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            Card_Data,
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Icon(Icons.star,size: 16,color: Colors.green,),
                      Text(
                        Card_Rate,
                        style: TextStyle(fontSize:10,fontWeight: FontWeight.bold),
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
                  )), //Win some points..!
              Container(
                  margin: EdgeInsets.only(left: 5),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.redAccent.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Icon(Icons.discount,size: 16,color: Colors.redAccent,),
                      Text(
                        "50\% off",
                        style: TextStyle(fontSize: 10,color: Colors.redAccent),
                      ),
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}
