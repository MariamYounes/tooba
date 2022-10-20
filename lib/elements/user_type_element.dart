import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tooba/elements/colors.dart';
import 'package:tooba/screens/home/select_category.dart';

Widget userType(context, icon, txt) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SelectCategory(),
        ),
      );
    },
    child: Container(
      width: MediaQuery.of(context).size.width * .75,
      height: 70,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        border: Border.all(
          width: 5,
          color: Colors.white,
        ),
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
            Constants.darkGreyColor(),
            Constants.lightGreyColor(),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.grey[200],
            ),
            const SizedBox(
              width: 50,
            ),
            Text(
              txt,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
