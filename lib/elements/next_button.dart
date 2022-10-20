import 'package:flutter/material.dart';

import 'colors.dart';

Widget nextButton(func, txt) {
  return InkWell(
    onTap: func,
    child: Container(
      height: 100,
      width: 120,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
        ),
        color: Constants.brownColor().withOpacity(.95),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            txt,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              //letterSpacing: 3,
              // fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Container(
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.arrow_forward,
              size: 18,
              color: Constants.brownColor(),
            ),
          )
        ],
      ),
    ),
  );
}
