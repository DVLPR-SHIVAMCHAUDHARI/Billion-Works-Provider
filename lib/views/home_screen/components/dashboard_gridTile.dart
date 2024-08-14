import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/consts/colorpallete.dart';
import 'package:provider/consts/typography.dart';

Container dashboardGridTile({number, text, image}) {
  return Container(
    padding: EdgeInsets.all(8),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      border: Border.all(color: Appcolor.textfieldColor),
    ),
    child: Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              number,
              style: TextStyle(
                  fontSize: 22.sp,
                  color: Appcolor.loginButtonColor,
                  fontFamily: Typo.Worksans_Semibold),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 12.sp,
                  color: Appcolor.greytextColor,
                  fontFamily: Typo.medium),
            ),
          ],
        ),
        SizedBox(
          width: 5.w,
        ),
        CircleAvatar(
          backgroundColor: Appcolor.textfieldColor,
          child: Image.asset(
            image,
            scale: 3,
          ),
        ),
      ],
    ),
  );
}
