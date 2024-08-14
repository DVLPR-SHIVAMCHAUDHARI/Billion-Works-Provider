import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/consts/asseturl.dart';
import 'package:provider/consts/colorpallete.dart';
import 'package:provider/consts/typography.dart';
import 'package:velocity_x/velocity_x.dart';

Row reviewssupercard() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CircleAvatar(
        radius: 30.r,
        child: Image.asset(Asseturl.igreview1),
      ),
      SizedBox(
        width: 16.w,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Donna Bins",
                style: TextStyle(
                    fontFamily: Typo.medium,
                    fontSize: 14.sp,
                    color: Appcolor.blacktextColor),
              ),
              SizedBox(
                width: 120.w,
              ),
              Text(
                "02 Dec",
                style: TextStyle(
                    fontFamily: Typo.medium,
                    fontSize: 12.sp,
                    color: Appcolor.greytextColor),
              )
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            children: [
              VxRating(
                selectionColor: Colors.yellow.shade600,
                isSelectable: false,
                value: 10,
                onRatingUpdate: (value) => {},
              ),
              Text("4.5",
                  style: TextStyle(
                      fontFamily: Typo.medium,
                      fontSize: 14.sp,
                      color: Appcolor.greytextColor))
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
              "Amal is incredible at what he does, \nvery prompt with delivery and any\n revisions.",
              style: TextStyle(
                  fontFamily: Typo.medium,
                  fontSize: 14.sp,
                  color: Appcolor.greytextColor))
        ],
      )
    ],
  );
}

Container reviewcard2() {
  return Container(
    margin: EdgeInsets.only(bottom: 32),
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
        color: Appcolor.greybgColor, borderRadius: BorderRadius.circular(12.r)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 30,
              child: Image.asset(
                Asseturl.igreview1,
              ),
            ),
            SizedBox(
              width: 26.w,
            ),
            Column(
              children: [
                Text(
                  "Donna Bins",
                  style: TextStyle(fontFamily: Typo.medium, fontSize: 18.sp),
                ),
                Text(
                  "@DONNABINS",
                  style: TextStyle(
                      fontFamily: Typo.medium,
                      color: Appcolor.greytextColor,
                      fontSize: 14.sp),
                ),
              ],
            ),
            SizedBox(
              width: 90.w,
            ),
            SvgPicture.asset(Asseturl.icdelete)
          ],
        ),
        SizedBox(
          height: 24.w,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12.r)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Service Name : Painting",
                style: TextStyle(fontFamily: Typo.medium, fontSize: 14.sp),
              ),
              SizedBox(
                height: 16.h,
              ),
              Divider(
                color: Appcolor.greybgColor,
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      VxRating(
                        selectionColor: Colors.yellow.shade600,
                        isSelectable: false,
                        value: 10,
                        onRatingUpdate: (value) => {},
                      ),
                      Text("4.5",
                          style: TextStyle(
                              fontFamily: Typo.medium,
                              fontSize: 14.sp,
                              color: Appcolor.greytextColor))
                    ],
                  ),
                  Text(
                    "25 Jan",
                    style: TextStyle(
                        fontFamily: Typo.medium,
                        fontSize: 12.sp,
                        color: Appcolor.greytextColor),
                  )
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet. ",
                style: TextStyle(
                    fontFamily: Typo.medium,
                    fontSize: 14.sp,
                    color: Appcolor.greytextColor),
              )
            ],
          ),
        )
      ],
    ),
  );
}
