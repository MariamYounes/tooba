import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'introduction.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() {
    Timer(const Duration(seconds: 3), () async {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const IntroductionScreen(),
        ),
      );
      // SharedPreferences pref = await SharedPreferences.getInstance();
      // var log = pref.getBool("isLog");
      // var first = pref.getBool("first");
      // if (log == true) {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => PagesTestWidget(
      //         currentTab: 0,
      //       ),
      //     ),
      //   );
      // } else if (first == true) {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => LoginScreen(),
      //     ),
      //   );
      // } else {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => IntroductionScreen(),
      //     ),
      //   );
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/splash.jpg",
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Image.asset(
                  "assets/images/logo.png",
                  fit: BoxFit.contain,
                  // width: MediaQuery.of(context).size.width * .7,
                  // height: MediaQuery.of(context).size.height * .2,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Tooba  طوبى",
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 3,
                  fontWeight: FontWeight.w600,
                  fontSize: 35,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
