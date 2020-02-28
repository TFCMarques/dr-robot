import 'package:dr_robot/utils/responsiveLayout.dart';
import 'package:dr_robot/widgets/navBar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: CustomPaint(
                    painter: ShapePainter(),
                    child: Column(children: <Widget>[
                      NavBar(),
                      SizedBox(height: 60),
                      Body(),
                      SizedBox(height: 60)
                    ]),
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeScreen(),
      //smallScreen: SmallScreen(),
    );
  }
}

class LargeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 120),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Your Easy-To-Use",
                  style: TextStyle(
                      fontSize: 64,
                      fontFamily: "Unica",
                      fontWeight: FontWeight.bold)),
              Text("Medical Assistant!",
                  style: TextStyle(
                      color: Color(0xFF4980C8),
                      fontSize: 84,
                      fontFamily: "Unica",
                      fontWeight: FontWeight.bold)),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 650),
                child: Text(
                  "A robot capable of performing diagnosis, through decision processes, using the patient's symptoms and samples, followed by a series of tests to reach a conclusion. At the end of the diagnosis, it will provide medication prescription if necessary.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Varela",
                      color: Colors.black),
                ),
              )
            ],
          ),
          Container(
            width: 400,
            height: 400,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color(0xFF6794D0),
                      offset: Offset(5.0, 5.0),
                  )
                ],
                borderRadius: BorderRadius.circular(120),
                shape: BoxShape.rectangle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/model.png"))),
          )
        ],
      ),
    );
  }
}

class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;

    Paint paint = Paint();
    Path shape = Path();

    shape.lineTo(0, height);
    shape.lineTo(width * 0.5, height);
    shape.quadraticBezierTo(width * 0.63, height * 0.7, width * 0.57, height * 0.5);
    shape.quadraticBezierTo(width * 0.5, height * 0.3, width * 0.7, 0);
    shape.close();

    paint.color = Color(0xFFD7EFFF);
    canvas.drawPath(shape, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
