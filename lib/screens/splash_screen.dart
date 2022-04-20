import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_widgets/top_app_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder:
              (context) => TopAppBar(),
          ));
    });
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(58.0),
        child: Center(
          child: Container(
           child: Text("This Is A Splash Screen"),
          ),
        ),
      ),
    );
  }
}
