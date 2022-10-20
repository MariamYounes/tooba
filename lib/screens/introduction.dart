import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tooba/elements/next_button.dart';

import 'auth/login.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

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
              const Expanded(
                child: SizedBox(),
              ),
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
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: const Text(
                  "Application That Serves Sellers, Drivers And Customers To Buy, Sell And Deliver Products. Sellers Can Advertise And Sell Their Products To The Customers. People Can Get Paid By Providing Delivery Services Within The App. Customers Will Get Products Easily At Their Doorste",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    //letterSpacing: 3,
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                  ),
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: nextButton(
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    "Next",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
