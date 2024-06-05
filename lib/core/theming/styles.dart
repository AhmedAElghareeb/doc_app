import 'package:doc_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24black700weight = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  static TextStyle font32blueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: ColorsManager.mainBlue,
  );

  static TextStyle font13greyRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.grey,
  );

  static TextStyle font16whiteSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
}