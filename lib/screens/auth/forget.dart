import 'package:flutter/material.dart';
import 'package:tooba/elements/next_button.dart';
import 'package:tooba/elements/text_field.dart';
import 'package:tooba/elements/utils.dart';
import 'package:tooba/screens/auth/verify.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({Key? key}) : super(key: key);

  final TextEditingController mobile = TextEditingController();

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
                SizedBox(
                  height: MediaQuery.of(context).size.height * .3,
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      color: Colors.white.withOpacity(.4),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        //Please Sign In
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.0),
                          child: Text(
                            "    Forgot Password",
                            // textAlign: TextAlign.center,
                            style: TextStyle(
                              letterSpacing: 1,
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 60),
                            child: textFieldBuilder(
                              mobile,
                              TextInputType.phone,
                              'Mobile No.',
                              maxLength: 11,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: nextButton(
                              () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const VerifyPassword(
                                      from: 'forget',
                                    ),
                                  ),
                                );
                              },
                              "Verify",
                            ),
                          ),
                        ),
                      ],
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
