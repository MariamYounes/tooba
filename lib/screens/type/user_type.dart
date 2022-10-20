import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tooba/elements/user_type_element.dart';
import 'package:tooba/elements/utils.dart';

class UserType extends StatelessWidget {
  const UserType({Key? key}) : super(key: key);

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
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 50,
                ),
                backArrow(context),
                Center(
                  child: Image.asset(
                    "assets/images/logo.png",
                    fit: BoxFit.contain,
                    // width: MediaQuery.of(context).size.width * .7,
                    // height: MediaQuery.of(context).size.height * .2,
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      color: Colors.white.withOpacity(.2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 16,
                          ),
                          //Please Sign In
                          const Text(
                            "    Select User Type:",
                            // textAlign: TextAlign.center,
                            style: TextStyle(
                              letterSpacing: 1,
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                userType(context, FontAwesomeIcons.userGroup,
                                    'Customer'),
                                const SizedBox(
                                  height: 20,
                                ),
                                userType(
                                    context, FontAwesomeIcons.shop, 'Seller'),
                                const SizedBox(
                                  height: 20,
                                ),
                                userType(context, FontAwesomeIcons.dharmachakra,
                                    'Driver'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
