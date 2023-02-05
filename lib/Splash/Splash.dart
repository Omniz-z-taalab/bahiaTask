import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../onBoarding/onBoarding.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3), //the wanted duration for the timer
            () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const onBoarding(),
            )));
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    backgroundColor:const Color(0xFFFF4572),
      body: Center(
        child:Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image:  ExactAssetImage('assets/bahia1.png'),
            )
          ),
        )
      ),
    );
  }
}
