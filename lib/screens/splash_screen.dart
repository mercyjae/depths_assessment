import 'dart:async';

import 'package:flutter/material.dart';
import 'package:payment_test/screens/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds:5),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> OnboardingScreen()));
    });
    super.initState();
  }
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color(0xff513097).withOpacity(0.9),
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
      Align(alignment: Alignment.center,
        child: Container(height: 200,width: 200,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(image: AssetImage('assets/images/splash.png')),
            border: Border.all(width: 4,color: Colors.white)),
            ),
      )
          ]),
      ),);
  }
}