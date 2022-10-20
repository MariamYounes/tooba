import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tooba/elements/colors.dart';
import 'package:tooba/elements/next_button.dart';
import 'package:tooba/elements/social_auth.dart';
import 'package:tooba/elements/text_field.dart';
import 'package:tooba/elements/utils.dart';
import 'package:tooba/screens/auth/login.dart';
import 'package:tooba/screens/auth/verify.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final TextEditingController name = TextEditingController();
  final TextEditingController mobile = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController passwordConfirm = TextEditingController();
  final TextEditingController location = TextEditingController();

  bool terms = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
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
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 40,
                ),
                backArrow(context),
                const SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      color: Colors.grey.withOpacity(.03),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        //Please Sign In
                        const Padding(
                          padding: EdgeInsets.only(left: 60),
                          child: Text(
                            "Sign up",
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
                          height: 30,
                        ),
                        //Please Sign In
                        Padding(
                          padding: const EdgeInsets.only(left: 70, right: 40),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
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
                              const Spacer(),
                              Container(
                                height: 100,
                                width: 100,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Constants.greenColor(),
                                  ),
                                  color: Colors.white.withOpacity(.2),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.camera_alt,
                                  color: Constants.greenColor(),
                                ),
                              ),
                            ],
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
                                name,
                                TextInputType.text,
                                'Name',
                                maxLength: 50,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              textFieldBuilder(
                                mobile,
                                TextInputType.phone,
                                'Mobile No.',
                                maxLength: 11,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              textFieldBuilder(
                                password,
                                TextInputType.text,
                                'Password',
                                secure: true,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              textFieldBuilder(
                                passwordConfirm,
                                TextInputType.text,
                                'Match Password',
                                secure: true,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              textFieldBuilder(
                                location,
                                TextInputType.text,
                                'Location',
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      if (mounted) {
                                        setState(() {
                                          terms = !terms;
                                        });
                                      }
                                    },
                                    child: Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Constants.greenColor(),
                                        ),
                                        color: terms == false
                                            ? Colors.white
                                            : Constants.greenColor(),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Terms & Conditions",
                                    // textAlign: TextAlign.center,
                                    style: TextStyle(
                                      letterSpacing: 1,
                                      //fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Constants.darkGreyColor(),
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
                                          builder: (context) => LoginScreen(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      "Sign in",
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
                                              const VerifyPassword(
                                            from: 'create',
                                          ),
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
