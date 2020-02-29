import 'package:dr_robot/utils/responsiveLayout.dart';
import 'package:flutter/material.dart';

class FeatureDisplay extends StatelessWidget {

  final Widget timeIcon = Icon(
    Icons.access_time,
    color: Color(0xFF6794D0),
    size: 180,
  );

  final Widget medIcon = Icon(
    Icons.local_hospital,
    color: Color(0xFF6794D0),
    size: 180,
  );

  final Widget peopleIcon = Icon(
    Icons.person_add,
    color: Color(0xFF6794D0),
    size: 180,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: ResponsiveLayout.isSmallScreen(context) ? 40 : 130,
        right: ResponsiveLayout.isSmallScreen(context) ? 40 : 130,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Features",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "Unica",
              fontSize: 64,
              color: Color(0xFF4980C8)
            )
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              feature(timeIcon, "Fast diagnosis of common illnesses, without the need to wait in long queues."),
              feature(medIcon, "Safe and reliable diagnosis, using innovative biomedical technologies."),
              feature(peopleIcon, "Higher patient satisfaction and quality of the medical service provided. ")
            ],
          ),
        ]
      )
    );
  }
}

Widget feature(Icon icon, String description) {
  return Container(
    margin: EdgeInsets.all(10.0),
    alignment: Alignment.center,
    child: Column(
      children: <Widget>[
        icon,
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 200, maxWidth: 250),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Varela",
              fontSize: 16,
              color: Colors.black
            )
          )
        )
      ],
    ),
  );
}