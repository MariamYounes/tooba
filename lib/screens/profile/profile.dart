import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tooba/elements/colors.dart';
import 'package:tooba/elements/utils.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        // alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/back.jpg",
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Center(
              child: Text(
                "Profile",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/images/man.jpg"),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const Text(
              "Ahmed Zahoor",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                height: 2.5,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const Text(
              "(+966) 5X XXX XXXX",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                // height: 0.7,
                // fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const Text(
              "Edit Profile",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                // height: 0.7,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                profileElement(context, FontAwesomeIcons.fileInvoiceDollar,
                    "Transactions"),
                profileElement(context, FontAwesomeIcons.heart, "Favourites"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                profileElement(
                    context, FontAwesomeIcons.wallet, "Wallet & Cards"),
                profileElement(
                    context, FontAwesomeIcons.phoneVolume, "Help Center"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                profileElement(context, FontAwesomeIcons.fileInvoiceDollar,
                    "Transactions"),
                profileElement(context, FontAwesomeIcons.heart, "Favourites"),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .55,
                ),
                Container(
                  height: 60,
                  width: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 6,
                      color: Colors.white,
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [
                        Constants.darkGreyColor().withOpacity(.9),
                        Constants.lightGreyColor().withOpacity(.7),
                      ],
                    ),
                  ),
                  child: const Icon(
                    FontAwesomeIcons.powerOff,
                    color: Colors.white,
                    size: 26,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
