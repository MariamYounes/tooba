import 'package:flutter/material.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:tooba/elements/colors.dart';
import 'package:tooba/elements/next_button.dart';
import 'package:tooba/elements/utils.dart';
import 'package:tooba/screens/auth/reset.dart';
import 'package:tooba/screens/auth/success.dart';

const _kInputHeight = 64.0;
const _kDefaultHint = '____';

class VerifyPassword extends StatefulWidget {
  final String? from;
  const VerifyPassword({Key? key, this.from}) : super(key: key);

  @override
  State<VerifyPassword> createState() => _VerifyPasswordState();
}

class _VerifyPasswordState extends State<VerifyPassword> {
  static const int _pinLength = 4;
  int? otpCode;
  final GlobalKey<FormFieldState<String>> _formKey =
      GlobalKey<FormFieldState<String>>();

  final TextEditingController _pinEditingController = TextEditingController();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    _pinEditingController.addListener(() {
      debugPrint('controller execute. pin:${_pinEditingController.text}');
    });
    super.initState();
  }

  @override
  void dispose() {
    _pinEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      key: _globalKey,
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
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      ),
                      color: Colors.white.withOpacity(.1),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        //Please Sign In
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.0),
                          child: Text(
                            "    Enter OTP",
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
                        Center(
                          child: Column(
                            children: [
                              Text(
                                "Enter OTP sent to your Mobile ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Constants.lightGreyColor(),
                                ),
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    const TextSpan(
                                      text: "(+966) 5X XXX XXXX     ",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "Edit",
                                      style: TextStyle(
                                        color: Constants.greenColor(),
                                        fontWeight: FontWeight.w600,
                                        decoration: TextDecoration.underline,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 24),
                                child: Container(
                                  height: 100,
                                  width: MediaQuery.of(context).size.width * .7,
                                  alignment: Alignment.center,
                                  child: buildPinInputTextFormFieldExample(),
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Didn’t Received?",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Constants.lightGreyColor(),
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 60,
                                  ),
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
                                    child: Text(
                                      "Resend",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        //letterSpacing: 3,
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Constants.greenColor(),
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
                            child: nextButton(
                              () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        widget.from == 'forget'
                                            ? ResetPassword()
                                            : const Success(),
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

  Widget buildPinInputTextFormFieldExample() {
    return Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: _kInputHeight,
            child: PinInputTextFormField(
              key: _formKey,
              pinLength: _pinLength,
              decoration: CirclePinDecoration(
                bgColorBuilder: PinListenColorBuilder(
                  Colors.transparent,
                  Colors.transparent,
                ),
                strokeColorBuilder: PinListenColorBuilder(
                  Constants.pinkColor(),
                  Constants.pinkColor(),
                ),
                //  bgColorBuilder: _solidEnable ? _solidColor : null,
                obscureStyle: ObscureStyle(
                  isTextObscure: false,
                  obscureText: '😂',
                ),
                hintText: _kDefaultHint,
                textStyle: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                gapSpace: 10.0,
              ),
              controller: _pinEditingController,
              textInputAction: TextInputAction.go,
              enabled: true,
              keyboardType: TextInputType.number,
              textCapitalization: TextCapitalization.characters,
              onSubmit: (pin) {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  if (mounted) {
                    setState(() {
                      otpCode = int.parse(pin);
                    });
                  }
                }
              },
              onChanged: (pin) {
                debugPrint('onChanged execute. pin:$pin');
                if (mounted) {
                  setState(() {
                    otpCode = int.parse(pin);
                  });
                }
              },
              onSaved: (pin) {
                debugPrint('onSaved pin:$pin');
                if (mounted) {
                  setState(() {
                    otpCode = int.parse(pin!);
                  });
                }
              },
              validator: (pin) {
                return null;
              },
              cursor: Cursor(
                width: 2,
                color: Constants.greenColor(),
                radius: const Radius.circular(1),
                enabled: true,
              ),
            ),
          ),
          // SizedBox(
          //   height: 16,
          // ),
        ],
      ),
    );
  }
}
