import 'package:flutter/material.dart';
import 'package:gender_classifier/splashscreen.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras;


Future<void> main() async {
  // initialize the cameras when the app starts
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gender Classifier',
      home: MySplash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
