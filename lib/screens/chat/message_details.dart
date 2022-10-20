import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tooba/elements/colors.dart';
import 'package:tooba/elements/message.dart';
import 'package:tooba/elements/utils.dart';

class MessageDetails extends StatelessWidget {
  MessageDetails({Key? key}) : super(key: key);

  final TextEditingController chatController = TextEditingController();

  final String sender = 'sender';

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
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    backArrow(context),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .3,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage("assets/images/man.jpg"),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              "User Name",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                // height: 0.7,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Colors.black,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Colors.black,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Colors.black,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Colors.black,
                                ),
                                Icon(
                                  Icons.star_border,
                                  size: 15,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 32.0, left: 32),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 2,
                    color: Colors.black26,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: ListView(
                    reverse: true,
                    padding: const EdgeInsets.all(20),
                    children: [
                      buildMyMessage(context),
                      buildMessage(context),
                    ],
                  ),
                ),
                typeMessage(context, chatController),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildMyMessage(context) => Align(
        alignment: AlignmentDirectional.centerStart,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.70,
                    ),
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      // color: Theme.of(context).primaryColor,
                      color: Constants.lightGreyColor(),
                      borderRadius: BorderRadius.circular(20),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.grey.withOpacity(0.5),
                      //     spreadRadius: 2,
                      //     blurRadius: 5,
                      //   ),
                      // ],
                    ),
                    child: const Text(
                      "Fine , thanks for you question",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              width: 34,
              height: 34,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.grey.withOpacity(0.5),
                //     spreadRadius: 2,
                //     blurRadius: 5,
                //   ),
                // ],
              ),
              child: const CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage(
                  "assets/images/man.jpg",
                ),
              ),
            ),
          ],
        ),
      );

  Widget buildMessage(context) => Align(
        alignment: AlignmentDirectional.centerEnd,
        child: Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: const CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage(
                  "assets/images/girl.jpg",
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.topRight,
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.80,
                    ),
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.grey.withOpacity(0.5),
                      //     spreadRadius: 2,
                      //     blurRadius: 5,
                      //   ),
                      // ],
                    ),
                    child: const Text(
                      "How are you ?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
