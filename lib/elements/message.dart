import 'package:flutter/material.dart';
import 'package:tooba/screens/chat/message_details.dart';

Widget messagesList(context) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MessageDetails(),
        ),
      );
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
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
            children: const [
              Text(
                "User Name",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  // height: 0.7,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              Text(
                "Hi, Ahmed",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  // height: 0.7,
                  // fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            // mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: const [
                  Text(
                    "Seller  ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.black,
                    ),
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
              const Text(
                "23:59",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  // height: 0.9,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget typeMessage(context, chatController) {
  return Container(
    alignment: Alignment.center,
    // height: 112,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(.3),
    ),
    //height: 60,
    child: Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * .72,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: const BorderRadius.all(
                Radius.circular(30),
              ),
              border: Border.all(
                color: Colors.black,
              ),
            ),
            height: 56,
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.attach_file,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 1,
                  height: 56,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextFormField(
                    controller: chatController,
                    keyboardType: TextInputType.text,
                    cursorColor: Colors.green,
                    minLines: 1,
                    maxLines: 1,
                    onEditingComplete: () {
                      if (chatController.value.text == "" ||
                          chatController.value.text == null) {
                      } else {}
                    },
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 12, right: 12),
                      hintStyle: TextStyle(color: Colors.black87, fontSize: 13),
                      border: InputBorder.none,
                      hintText: 'Type message',
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            height: 56,
            width: 56,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: const Icon(
              Icons.send,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}
