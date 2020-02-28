import 'package:flutter/material.dart';
import '../utils/responsiveLayout.dart';

class NavBar extends StatelessWidget{

  final navItems = ["Features", "Contacts"];

  List<Widget> navItem() {
    return navItems.map((item) =>
      Padding(
        padding: EdgeInsets.only(left: 30),
        child: Text(item, style: TextStyle(fontSize: 16, fontFamily: "Varela", fontWeight: FontWeight.bold))
      )
    ).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: ResponsiveLayout.isSmallScreen(context) ? 40 : 130,
        right: ResponsiveLayout.isSmallScreen(context) ? 40 : 130,
        top: 25
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 200,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white
            ),
            child: Center(
              child: Text("Dr. Robot", style: TextStyle(fontSize: 36, fontFamily: "Unica", fontWeight: FontWeight.bold)),
            ),
          ),
          if (!ResponsiveLayout.isSmallScreen(context)) 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[...navItem()]
          )
        ],
      ),
    );
  }
}