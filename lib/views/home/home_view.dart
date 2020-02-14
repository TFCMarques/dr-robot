import 'package:dr_robot/widgets/centered_view/centered_view.dart';
import 'package:dr_robot/widgets/navbar/navbar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: <Widget>[
            NavBar()
          ],
        ),
      ),
    );
  }
}
