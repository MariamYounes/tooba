import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'colors.dart';

Widget textFieldBuilder(controller, TextInputType textInputType, hint,
    {int maxLength = 100, bool secure = false}) {
  return TextFormField(
    controller: controller,
    keyboardType: textInputType,
    style: const TextStyle(
      fontSize: 14,
    ),
    maxLength: maxLength,
    obscureText: secure,
    cursorColor: Constants.pinkColor(),
    decoration: InputDecoration(
      counterText: "",
      fillColor: Colors.white,
      //contentPadding: const EdgeInsets.all(12),
      hintText: hint,
      hintStyle: const TextStyle(
        color: Colors.black45,
        fontSize: 14,
      ),
      // border: InputBorder.none,
    ),
  );
}

Widget textFieldBuilderLines(controller, hint, {int line = 2}) {
  return Container(
    // width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: Colors.grey[400]!,
      ),
    ),
    child: TextFormField(
      controller: controller,
      keyboardType: TextInputType.text,
      style: const TextStyle(
        fontSize: 14,
      ),
      minLines: 2,
      maxLines: line,
      cursorColor: Constants.pinkColor(),
      decoration: InputDecoration(
        counterText: "",
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.all(12),
        hintText: hint,
        hintStyle: const TextStyle(
          color: Colors.black45,
          fontSize: 14,
        ),
        border: InputBorder.none,
      ),
    ),
  );
}
