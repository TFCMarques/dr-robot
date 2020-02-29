import 'package:dr_robot/utils/responsiveLayout.dart';
import 'package:dr_robot/widgets/featureDisplay.dart';
import 'package:dr_robot/widgets/navBar.dart';
import 'package:dr_robot/widgets/videoDisplay.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: CustomPaint(
                painter: ShapePainter(),
                child: Column(
                  children: <Widget>[
                    NavBar(),
                    SizedBox(height: 60),
                    Body(),
                    SizedBox(height: 60)
                  ]
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child:Container(
                child: FeatureDisplay(),
              )
            ),
            Container(
              alignment: Alignment.center,
              child: CustomPaint(
                painter: VideoShapePainter(),
                child: Column(
                  children: <Widget>[
                    VideoDisplay(
                      videoController: VideoPlayerController.asset("assets/videos/exampleVideo.mp4"),
                      looping: true
                    )
                  ]
                ),
              )
            ),
            Container(
              alignment: Alignment.center,
              child: CustomPaint(
                painter: FooterPainter(),
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: 25,
                    left: ResponsiveLayout.isSmallScreen(context) ? 40 : 130,
                    right: ResponsiveLayout.isSmallScreen(context) ? 40 : 130,
                    top: 40
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Project developed for Entrepreneurship Course - FCT-NOVA 2019/2020",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Varela",
                          color: Colors.black
                        ),
                      ),
                    ]
                  )
                )
              ),
            )
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
      padding: EdgeInsets.symmetric(horizontal: 60),
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
                    fontWeight: FontWeight.bold)
                  ),
              Text("Medical Assistant!",
                  style: TextStyle(
                    color: Color(0xFF4980C8),
                    fontSize: 84,
                    fontFamily: "Unica",
                    fontWeight: FontWeight.bold)
                  ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 650),
                child: Text(
                  "A robot capable of performing diagnosis, through decision processes, using the patient's symptoms and samples, followed by a series of tests to reach a conclusion. At the end of the diagnosis, it will provide medication prescription if necessary.",
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

    shape.lineTo(0, height * 0.95);
    shape.quadraticBezierTo(width * 0.25, height * 0.95, width * 0.4, height * 0.92);
    shape.quadraticBezierTo(width * 0.63, height * 0.88, width * 0.55, height * 0.5);
    shape.quadraticBezierTo(width * 0.5, height * 0.3, width * 0.7, 0);
    shape.close();

    paint.color = Color(0xFFD7EFFF);
    canvas.drawPath(shape, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class VideoShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;

    Paint paint = Paint();
    Path shape = Path();

    shape.moveTo(width, 0);
    shape.quadraticBezierTo(width * 0.4, height * 0.09, width * 0.37, height * 0.13);
    shape.quadraticBezierTo(width * 0.25, height * 0.25, width * 0.35, height * 0.5);
    shape.quadraticBezierTo(width * 0.7, height * 0.7, width, height * 0.6);
    shape.close();

    paint.color = Color(0xFFD7EFFF);
    canvas.drawPath(shape, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class FooterPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;

    Paint paint = Paint();
    Path shape = Path();

    shape.moveTo(0, height);
    shape.lineTo(0, height * 0.3);
    shape.quadraticBezierTo(width * 0.025, height * 0.2, width * 0.1, height * 0.2);
    shape.quadraticBezierTo(width * 0.20, height * 0.4, width * 0.3, height * 0.1);
    shape.quadraticBezierTo(width * 0.55, height * 0.2, width * 0.7, height * 0.1);
    shape.quadraticBezierTo(width * 0.80, height * 0.4, width, height * 0.20);
    shape.lineTo(width, height);
    shape.close();

    paint.color = Color(0xFFD7EFFF);
    canvas.drawPath(shape, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}