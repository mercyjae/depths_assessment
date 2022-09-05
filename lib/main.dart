import 'package:flutter/material.dart';
import 'package:payment_test/airtime.dart';
import 'package:payment_test/data.dart';
import 'package:payment_test/onboarding_screen.dart';
import 'package:payment_test/splash_screen.dart';
import 'package:payment_test/utility_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Utility()
    );
  }
}

