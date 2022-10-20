import 'package:flutter/material.dart';
import 'package:tooba/elements/next_button.dart';
import 'package:tooba/elements/text_field.dart';
import 'package:tooba/elements/utils.dart';
import 'package:tooba/screens/auth/success.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({Key? key}) : super(key: key);

  final TextEditingController password = TextEditingController();
  final TextEditingController passwordConfirm = TextEditingController();
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
                            "    Reset  Password",
                            // textAlign: TextAlign.center,
                            style: TextStyle(
                              letterSpacing: 1,
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 60),
                            child: Column(
                              children: [
                                textFieldBuilder(
                                  password,
                                  TextInputType.text,
                                  'Password',
                                  secure: true,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                textFieldBuilder(
                                  passwordConfirm,
                                  TextInputType.text,
                                  'Match Password',
                                  secure: true,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: nextButton(
                              () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Success(),
                                  ),
                                );
                              },
                              "Confirm",
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
