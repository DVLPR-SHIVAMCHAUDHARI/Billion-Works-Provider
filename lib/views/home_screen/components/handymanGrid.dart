import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/consts/asseturl.dart';
import 'package:provider/consts/colorpallete.dart';
import 'package:provider/consts/typography.dart';

Container handymancard({icon}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12.r),
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Container(
              width: 157.w,
              height: 110.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    Asseturl.igHandy1,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 12,
              right: 14,
              child: Image.asset(
                icon,
                scale: 3.5,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Text(
                "Rickey Ledner",
                style: TextStyle(
                    fontFamily: Typo.medium,
                    fontSize: 16.sp,
                    color: Appcolor.blacktextColor),
              ),
              SizedBox(
                height: 15.h,
              ),
              SizedBox(
                width: 116.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Appcolor.greybgColor,
                      child: Image.asset(
                        color: Appcolor.primaryColor,
                        Asseturl.igPhone,
                        scale: 4,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Appcolor.greybgColor,
                      child: Image.asset(
                        color: Appcolor.primaryColor,
                        Asseturl.igMessage,
                        scale: 4,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Appcolor.greybgColor,
                      child: Image.asset(
                        Asseturl.igChat,
                        color: Appcolor.primaryColor,
                        scale: 4,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
