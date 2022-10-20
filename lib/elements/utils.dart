import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toast/toast.dart';
import 'package:tooba/screens/notifications/notifications.dart';

import 'colors.dart';

Widget backArrow(context) {
  return InkWell(
    onTap: () {
      Navigator.pop(context);
    },
    child: Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Container(
        height: 40,
        width: 45,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            //width: 2,
            color: Constants.greyColor(),
          ),
        ),
        child: const Icon(
          Icons.arrow_back_ios_outlined,
          color: Colors.black,
          size: 20,
        ),
      ),
    ),
  );
}

Widget notificationButton(context) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const NotificationScreen(),
        ),
      );
    },
    child: Padding(
      padding: const EdgeInsets.only(right: 24),
      child: Container(
        height: 40,
        width: 45,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Constants.lightGreyColor().withOpacity(.9),
        ),
        child: const Icon(
          Icons.notifications_none_outlined,
          color: Colors.white,
          size: 20,
        ),
      ),
    ),
  );
}

Widget searchButton(context, width) {
  return InkWell(
    onTap: () {
      // Navigator.pop(context);
    },
    child: Container(
      height: 40,
      width: width,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Constants.lightGreyColor().withOpacity(.9),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: Constants.darkGreyColor(),
            // size: 25,
          ),
          const SizedBox(
            width: 15,
          ),
          const Text(
            "Search",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}

void showError(BuildContext context, txt) {
  Toast.show(
    txt,
    webTexColor: Colors.black,
    duration: 2,
    gravity: Toast.center,
    backgroundColor: Colors.white,
    border: Border.all(
      color: Colors.red,
    ),
  );
}

void showSuccess(BuildContext context, txt) {
  Toast.show(
    txt,
    webTexColor: Colors.black,
    duration: 2,
    gravity: Toast.center,
    backgroundColor: Colors.white,
    border: Border.all(
      color: Constants.pinkColor(),
    ),
  );
}

Widget notificationList(context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Row(
      children: [
        Container(
          width: 50,
          height: 50,
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
                fontSize: 15,
                // height: 0.7,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            Text(
              "Order Placed Successfully",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                // height: 0.7,
                // fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ],
        ),
        const Spacer(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          // mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              "23:59",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                // height: 0.9,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              FontAwesomeIcons.circleXmark,
              color: Colors.black54,
              size: 20,
            ),
          ],
        ),
      ],
    ),
  );
}

Widget profileElement(context, icon, txt) {
  return InkWell(
    onTap: () {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => const SelectCategory(),
      //   ),
      // );
    },
    child: Container(
      width: MediaQuery.of(context).size.width * .35,
      height: MediaQuery.of(context).size.width * .25,
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
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 26,
            ),
            Text(
              txt,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                height: .5,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
