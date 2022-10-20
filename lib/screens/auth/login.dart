import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tooba/elements/next_button.dart';
import 'package:tooba/elements/social_auth.dart';
import 'package:tooba/elements/text_field.dart';
import 'package:tooba/screens/auth/create.dart';
import 'package:tooba/screens/auth/forget.dart';
import 'package:tooba/screens/type/user_type.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController mobile = TextEditingController();
  final TextEditingController password = TextEditingController();

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
              // mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 90,
                ),
                Image.asset(
                  "assets/images/logo.png",
                  fit: BoxFit.contain,
                  // width: MediaQuery.of(context).size.width * .7,
                  // height: MediaQuery.of(context).size.height * .2,
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
                      color: Colors.white.withOpacity(.3),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        //Please Sign In
                        const Padding(
                          padding: EdgeInsets.only(left: 60),
                          child: Text(
                            "Please Sign In",
                            // textAlign: TextAlign.center,
                            style: TextStyle(
                              letterSpacing: 1,
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        socialAuth(),
                        const SizedBox(
                          height: 20,
                        ),
                        //Please Sign In
                        const Center(
                          child: Text(
                            "-or-",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              letterSpacing: 1,
                              //fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 60),
                          child: Column(
                            children: [
                              textFieldBuilder(
                                mobile,
                                TextInputType.phone,
                                'Mobile No.',
                                maxLength: 11,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              textFieldBuilder(
                                password,
                                TextInputType.text,
                                'Password',
                                secure: true,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ForgetPassword(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      "Forgot Password?",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        //letterSpacing: 3,
                                        decoration: TextDecoration.underline,
                                        // fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  InkWell(
                                    onTap: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //     builder: (context) =>
                                      //         const CreateAccount(),
                                      //   ),
                                      // );
                                    },
                                    child: const Text(
                                      "Skip",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        //letterSpacing: 3,
                                        decoration: TextDecoration.underline,
                                        //fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const CreateAccount(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      "Sign up",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        //letterSpacing: 3,
                                        decoration: TextDecoration.underline,
                                        // fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  nextButton(
                                    () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const UserType(),
                                        ),
                                      );
                                    },
                                    "Next",
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
