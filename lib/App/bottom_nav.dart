import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:line_icons/line_icon.dart';
import 'package:toters/App/Home.dart';
import 'package:toters/App/orders.dart';
import 'package:toters/App/search.dart';
import 'package:toters/App/profile.dart';


class Bottome_nav extends StatefulWidget {
  const Bottome_nav({Key? key}) : super(key: key);

  @override
  State<Bottome_nav> createState() => _Bottome_navState();
}

class _Bottome_navState extends State<Bottome_nav> {
  int _selectedIndex = 0;
  static List<Widget> options = <Widget>[
    Home_Page(),
    searching(),
    Home_Page(),
    order_page(),
    Profile_p(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: options.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
          decoration:
          BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Colors.black45.withOpacity(0.2),
            )
          ]),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: GNav(
                rippleColor: Colors.grey[300]!,
                hoverColor: Colors.grey[100]!,
                gap: 8,
                activeColor: Colors.green,
                iconSize: 21,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: Duration(milliseconds: 400),
                tabBackgroundColor: Colors.grey[100]!,
                color: Colors.black.withOpacity(0.5),
                tabs: [
                  GButton(
                    icon: LineIcons.home,
                    text: 'Home',
                  ),

                  GButton(
                    icon: LineIcons.search,
                    text: 'Likes',
                  ),
                  GButton(
                    icon: LineIcons.fontAwesomeBlackTie,
                    text: 'Search',
                  ),
                  GButton(
                    icon: LineIcons.list,
                    text: 'Profile',
                  ),
                  GButton(
                    icon: LineIcons.user,
                    text: 'Home',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          )),
    );
  }

}
