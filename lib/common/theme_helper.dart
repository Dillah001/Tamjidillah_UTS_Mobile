import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ThemeHelper {
  get filled => null;

  get color => null;

  InputDecoration textInputDecoration(
      [String lableText = "", String hintText = ""]) {
    return InputDecoration(
      labelText: lableText,
      hintText: hintText,
      fillColor: Colors.white,
      filled: true,
      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: Colors.grey)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: Colors.grey.shade400)),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: Colors.red, width: 2.0)),
    );
  }

  buttonBoxDecoration(BuildContext context) {}

  static ButtonStyle() {}

  inputBoxDecorationShadow() {}
}

buttonBoxDecoration(BuildContext context,
    [String color1 = "", String color2 = ""]) {
  color1 = Theme.of(context).primaryColor as String;
  if (color1.isEmpty == false) {
    var c1 = HexColor(color1);
  }
  if (color2.isEmpty == false) {
    var c2 = HexColor(color2);
  }

  var offset;
  var c1;
  var c2;
  return BoxDecoration(
    boxShadow: [
      BoxShadow(color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
    ],
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: [0.0, 1.0],
      colors: [
        c1,
        c2,
      ],
    ),
    color: Colors.deepPurple.shade300,
    borderRadius: BorderRadius.circular(30),
  );
}

ButtonStyle buttonStyle() {
  return ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    ),
    minimumSize: MaterialStateProperty.all(Size(50, 50)),
    backgroundColor: MaterialStateProperty.all(Colors.transparent),
    shadowColor: MaterialStateProperty.all(Colors.transparent),
  );
}

class LoginFormStyle {}
