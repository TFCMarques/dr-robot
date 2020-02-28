import 'package:dr_robot/views/home/homeView.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dr. Robot',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Arial'
        )
      ),
      home: HomeView()
    );
  }
}
