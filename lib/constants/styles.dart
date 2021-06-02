import 'package:covid_app/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseStyles {
  static TextStyle appTitleTextStyle = TextStyle(
    color: AppColor.textColor,
    fontSize: 18,
    fontWeight: FontWeight.w700,
    height: 1.4,
  );

  static TextStyle titleTextStyle = TextStyle(
    color: AppColor.textColor,
    fontWeight: FontWeight.w700,
    fontSize: 24,
    height: 1.333333,
  );

  static TextStyle navigationTextStyle = TextStyle(
    color: AppColor.buttonColor, //Color.fromARGB(255, 0, 177, 255),
    fontWeight: FontWeight.w700,
    fontSize: 10,
    height: 1.5,
  );

  static TextStyle headingTextStyle = TextStyle(
    color: AppColor.textColor,
    fontWeight: FontWeight.w600,
    fontSize: 15,
  );

  static TextStyle errorText = TextStyle(
    color: AppColor.errorColor,
    fontWeight: FontWeight.w600,
    fontSize: 15,
  );

  static TextStyle gridHeadingTextStyle = TextStyle(
    color: AppColor.gridHeadingColor,
    fontWeight: FontWeight.w600,
    fontSize: 12,
  );

  static TextStyle subHeadingTextStyle = TextStyle(
    color: Colors.teal,
    fontWeight: FontWeight.w600,
    fontSize: 10,
  );
}
