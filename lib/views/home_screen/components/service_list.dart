import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/consts/asseturl.dart';
import 'package:provider/consts/colorpallete.dart';
import 'package:provider/consts/typography.dart';
import 'package:velocity_x/velocity_x.dart';

Container serviceList() {
  return Container(
    margin: EdgeInsets.only(bottom: 24),
    width: double.infinity,
    height: 129.h,
    decoration: BoxDecoration(
        color: Appcolor.greybgColor, borderRadius: BorderRadius.circular(12.r)),
    child: Row(
      children: [
        Container(
          child: Stack(
            children: [
              Image.asset(Asseturl.igListimage1),
              Positioned(
                top: 15,
                left: 15,
                child: Container(
                  alignment: Alignment.center,
                  width: 44.w,
                  height: 22.h,
                  decoration: BoxDecoration(
                      color: Appcolor.loginButtonColor,
                      borderRadius: BorderRadius.circular(25.r)),
                  child: Text(
                    "\$150",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontFamily: Typo.Worksans_Semibold),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  VxRating(
                    selectionColor: Colors.yellow.shade700,
                    isSelectable: false,
                    value: 10,
                    onRatingUpdate: (value) {},
                  ),
                  Text(
                    "4.3",
                    style: TextStyle(color: Appcolor.greytextColor),
                  )
                ],
              ),
              Text(
                "Fixing Smart devices",
                style: TextStyle(
                    fontFamily: Typo.medium,
                    fontSize: 14.sp,
                    color: Appcolor.blacktextColor),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 25.w,
                    height: 25.h,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        Asseturl.igService_user1,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "Devon Lane",
                    style: TextStyle(
                        color: Appcolor.greytextColor,
                        fontFamily: Typo.medium,
                        fontSize: 14.sp),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}
