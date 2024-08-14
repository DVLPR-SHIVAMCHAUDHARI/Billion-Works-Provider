import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/consts/asseturl.dart';
import 'package:provider/consts/colorpallete.dart';
import 'package:provider/consts/typography.dart';
import 'package:provider/main.dart';
import 'package:provider/views/home_screen/components/service_Details.dart';
import 'package:velocity_x/velocity_x.dart';

servicegrid() {
  return GestureDetector(
    onTap: () {
      GoRouter.of(navigatorKey.currentState!.context)
          .goNamed(ServiceDetails.id);
    },
    child: Container(
      decoration: BoxDecoration(
        color: Appcolor.greybgColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                Asseturl.igServiceimage1,
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  alignment: Alignment.center,
                  width: 49.w,
                  height: 15.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(170.r)),
                  child: Text(
                    "PAINTING",
                    style: TextStyle(
                        fontSize: 8.sp,
                        color: Appcolor.primaryColor,
                        fontFamily: Typo.Worksans_Semibold),
                  ),
                ),
              ),
              Positioned(
                right: 12,
                top: 86,
                child: Container(
                  padding: EdgeInsets.all(2),
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.r)),
                  child: Container(
                    alignment: Alignment.center,
                    width: 44.w,
                    decoration: BoxDecoration(
                      color: Appcolor.primaryColor,
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                    child: Text(
                      "\$150",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontFamily: Typo.Worksans_Semibold),
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
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
                  "Painting for beautiful Homes sdfasdfasdfasdf",
                  maxLines: 2,
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
                      "Emma Grate",
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
    ),
  );
}
