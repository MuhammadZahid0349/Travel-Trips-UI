import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travel_point/view/home/home_screen.dart';
import 'package:travel_point/view/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: (defaultTargetPlatform == TargetPlatform.android ||
              defaultTargetPlatform == TargetPlatform.iOS)
          ? const SplashScreen()
          : const HomeScreen(),
    );
  }
}
