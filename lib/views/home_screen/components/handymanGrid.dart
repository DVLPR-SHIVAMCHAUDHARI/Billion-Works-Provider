import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/consts/asseturl.dart';
import 'package:provider/consts/colorpallete.dart';
import 'package:provider/consts/typography.dart';

Container handymancard({icon}) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(12.r)),
    child: Column(
      children: [
        Stack(
          children: [
            Image.asset(
              Asseturl.igHandy1,
            ),
            Positioned(
              top: 12,
              right: 14,
              child: Image.asset(
                icon,
                scale: 3,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 22.h,
        ),
        Text(
          "Rickey Ledner",
          style: TextStyle(
              fontFamily: Typo.medium,
              fontSize: 16.sp,
              color: Appcolor.blacktextColor),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Appcolor.greybgColor,
              child: Image.asset(
                color: Appcolor.loginButtonColor,
                Asseturl.igPhone,
                scale: 4,
              ),
            ),
            CircleAvatar(
              backgroundColor: Appcolor.greybgColor,
              child: Image.asset(
                color: Appcolor.loginButtonColor,
                Asseturl.igMessage,
                scale: 4,
              ),
            ),
            CircleAvatar(
              backgroundColor: Appcolor.greybgColor,
              child: Image.asset(
                Asseturl.igChat,
                color: Appcolor.loginButtonColor,
                scale: 4,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
