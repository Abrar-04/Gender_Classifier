import 'package:flutter/material.dart';
import 'package:gender_classifier/home.dart';
import 'package:splashscreen/splashscreen.dart';

class MySplash extends StatefulWidget {
  @override
  _MySplashState createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds: Home(),
      title: Text(
        "Gender Classifier",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.green,
        ),
      ),
      image: Image.asset('assets/gender.png'),
      backgroundColor: Colors.black,
      photoSize: 150,
      loaderColor: Colors.blue,
    );
  }
}
