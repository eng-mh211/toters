import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class Profile_p extends StatefulWidget {
  const Profile_p({Key? key}) : super(key: key);

  @override
  State<Profile_p> createState() => _ProfileState();
}

class _ProfileState extends State<Profile_p> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleTextStyle: TextStyle(),
          elevation: 2,
          backgroundColor: Colors.white,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment(-1.6, 0),
                child: Text(
                  "moahemd hasanen",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        ),
        body: ListView(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 180,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset:
                                  Offset(1, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.card_giftcard,
                                      color: Color(0xFF02B793),
                                    ),
                                    SizedBox(width: 10),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Green",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        Text(
                                          "0 pts",
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xFF02B793),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Stack(
                        children: [
                          Container(
                              width: 400,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: Offset(
                                        1, 1), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey.withOpacity(0.1),
                                          ),
                                          child: Icon(
                                              Icons.person_outline_rounded,
                                              color: Colors.grey),
                                        ),
                                        SizedBox(height: 10),
                                        Text("Profile",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500)),
                                      ]),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey.withOpacity(0.1),
                                          ),
                                          child: Icon(
                                              Icons.headset_mic_outlined,
                                              color: Colors.grey),
                                        ),
                                        SizedBox(height: 10),
                                        Text("Support",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500)),
                                      ]),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey.withOpacity(0.1),
                                          ),
                                          child: Icon(Icons.payment,
                                              color: Colors.grey),
                                        ),
                                        SizedBox(height: 10),
                                        Text("Payment",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500)),
                                      ]),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey.withOpacity(0.1),
                                          ),
                                          child: Icon(Icons.language,
                                              color: Colors.grey),
                                        ),
                                        SizedBox(height: 10),
                                        Text("Language",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500)),
                                      ]),
                                ],
                              )),
                          Positioned(
                              right: 22,
                              top: 5,
                              child: Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.green,
                                ),
                                child: Center(
                                    child: Text(
                                  "En",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                )),
                              ))
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width - 224,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset:
                                    Offset(1, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Column(children: [
                              Row(
                                children: [
                                  Text("Toters Cash",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14)),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.info_outline,
                                    color: Color(0xFF02B793),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.wallet,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Wallet",
                                      )
                                    ],
                                  ),
                                  Text(
                                    "IQD 50,000",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                height: 1,
                                thickness: 2,
                                color: Colors.grey.withOpacity(0.2),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.add,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Add Funds",
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                height: 1,
                                thickness: 2,
                                color: Colors.grey.withOpacity(0.2),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.subdirectory_arrow_left_outlined,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Send Funds",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  )
                                ],
                              )
                            ]),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width - 263,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset:
                                    Offset(1, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Promotioms",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.percent,color: Colors.grey,),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "Credits",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "IQD 0",
                                          style: TextStyle(
                                              color: Color(0xFF02B793),
                                              fontWeight: FontWeight.w900),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Divider(
                                      height: 1,
                                      thickness: 2,
                                      color: Colors.grey.withOpacity(0.2),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.discount,color: Colors.grey,),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Add Promo Code",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ]))),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width - 138,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset:
                                    Offset(1, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Account Details",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.notifications_none,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Notifications",

                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Divider(
                                    height: 1,
                                    thickness: 2,
                                    color: Colors.grey.withOpacity(0.2),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Addresses",
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Divider(
                                    height: 1,
                                    thickness: 2,
                                    color: Colors.grey.withOpacity(0.2),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.favorite_border,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Favorites",
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Divider(
                                    height: 1,
                                    thickness: 2,
                                    color: Colors.grey.withOpacity(0.2),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.list_alt_sharp,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Preferences",
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Divider(
                                    height: 1,
                                    thickness: 2,
                                    color: Colors.grey.withOpacity(0.2),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.person_add_outlined,color: Colors.grey,),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Refer a friend",

                                      )
                                    ],
                                  ),
                                ]),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width - 183,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset:
                                    Offset(1, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Help Center",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.headset_mic_outlined,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Get Support",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Divider(
                                    height: 1,
                                    thickness: 2,
                                    color: Colors.grey.withOpacity(0.2),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.message_rounded,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Support Tickets",
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Divider(
                                    height: 1,
                                    thickness: 2,
                                    color: Colors.grey.withOpacity(0.2),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.headset_mic,color: Colors.grey,),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Legal",
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Divider(
                                    height: 1,
                                    thickness: 2,
                                    color: Colors.grey.withOpacity(0.2),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(LineIcons.hammer,color: Colors.grey,),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Faq",)
                                    ],
                                  ),
                                ]),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width - 350,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset:
                                    Offset(1, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.exit_to_app,
                                      color: Colors.red,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Sign out",)
                                  ]))),
                      SizedBox(
                        height: 20,
                      )
                    ]))
          ],
        ));
  }
}
