import 'package:flutter/material.dart';
import '../utils/responsiveLayout.dart';

class NavBar extends StatelessWidget{
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: InkWell(
                  onTap: () => Scrollable.ensureVisible(context),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                    child: Text("Features", style: TextStyle(fontSize: 18, fontFamily: "Varela", fontWeight: FontWeight.bold)),
                  ),
                  borderRadius: BorderRadius.circular(90),
                )
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: InkWell(
                  onTap: () => Scrollable.ensureVisible(context),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                    child: Text("Contacts", style: TextStyle(fontSize: 18, fontFamily: "Varela", fontWeight: FontWeight.bold)),
                  ),
                  borderRadius: BorderRadius.circular(90),
                )
              ),
            ]
          )
        ],
      ),
    );
  }
}