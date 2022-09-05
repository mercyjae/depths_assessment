import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          children: [
      Align(alignment: Alignment.center,
        child: Container(height: 200,width: 200,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 4,color: Colors.white)),
            child: Image.asset('assets/images/splash.png'),),
      )
          ]),
      ),);
  }
}