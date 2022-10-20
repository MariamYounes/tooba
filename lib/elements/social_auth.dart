import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tooba/elements/colors.dart';

Widget socialAuth() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [
              Constants.darkGreyColor(),
              Constants.lightGreyColor().withOpacity(.8),
            ],
          ),
        ),
        alignment: Alignment.center,
        child: const Icon(
          FontAwesomeIcons.facebookF,
          color: Colors.white,
        ),
      ),
      const SizedBox(
        width: 30,
      ),
      Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [
              Constants.darkGreyColor(),
              Constants.lightGreyColor().withOpacity(.8),
            ],
          ),
        ),
        alignment: Alignment.center,
        child: const Icon(
          FontAwesomeIcons.google,
          color: Colors.white,
        ),
      ),
      const SizedBox(
        width: 30,
      ),
      Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [
              Constants.darkGreyColor(),
              Constants.lightGreyColor().withOpacity(.8),
            ],
          ),
        ),
        alignment: Alignment.center,
        child: const Icon(
          FontAwesomeIcons.twitter,
          color: Colors.white,
        ),
      ),
    ],
  );
}
