import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/consts/colorpallete.dart';
import 'package:provider/consts/typography.dart';

TextField customTextField({controller, hintText, suffixIcon, scale}) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      filled: true,
      fillColor: Appcolor.textfieldColor,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
      hintText: hintText,
      hintStyle: TextStyle(
        color: Appcolor.greytextColor,
        fontFamily: Typo.medium,
        fontSize: 14.sp,
      ),
      suffixIcon: suffixIcon != null
          ? Image.asset(
              suffixIcon,
              scale: scale ?? 3.0,
            )
          : null,
    ),
  );
}
