import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/consts/asseturl.dart';
import 'package:provider/consts/colorpallete.dart';
import 'package:provider/consts/typography.dart';
import 'package:provider/views/home_screen/components/dashboard_gridTile.dart';
import 'package:provider/views/home_screen/components/handymanGrid.dart';
import 'package:provider/views/home_screen/components/service_Grid.dart';
import 'package:provider/views/home_screen/servicelist/service_list_1.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  static String id = "Homescreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Appcolor.loginButtonColor,
          title: Text(
            "Home",
            style: TextStyle(
                fontFamily: Typo.medium, fontSize: 18, color: Colors.white),
          ),
          actions: [
            Image.asset(
              Asseturl.igChat,
              scale: 4,
            ),
            SizedBox(
              width: 20.w,
            ),
            Image.asset(
              Asseturl.igProfile,
              color: Colors.white,
              scale: 4,
            ),
            SizedBox(
              width: 20.w,
            ),
            SizedBox(
              height: 20.h,
            ),
          ]),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Appcolor.textfieldColor,
                          borderRadius: BorderRadius.circular(5.r)),
                      width: double.infinity,
                      height: 82.h,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "Commision Type : ",
                                        style: TextStyle(
                                            color: Appcolor.greytextColor,
                                            fontSize: 14,
                                            fontFamily: Typo.medium)),
                                    TextSpan(
                                        text: " Company",
                                        style: TextStyle(
                                            color: Appcolor.blacktextColor,
                                            fontSize: 14,
                                            fontFamily: Typo.medium))
                                  ],
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "My Commision : ",
                                        style: TextStyle(
                                            color: Appcolor.greytextColor,
                                            fontSize: 14,
                                            fontFamily: Typo.medium)),
                                    TextSpan(
                                        text: " \$20 ",
                                        style: TextStyle(
                                            color: Appcolor.blacktextColor,
                                            fontSize: 14,
                                            fontFamily: Typo.medium)),
                                    TextSpan(
                                        text: "(Fixed)",
                                        style: TextStyle(
                                            color: Appcolor.greytextColor,
                                            fontSize: 14,
                                            fontFamily: Typo.medium)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 62.w),
                          Image.asset(Asseturl.igIcon1)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    GridView(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 90.h,
                          crossAxisCount: 2,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20),
                      children: [
                        dashboardGridTile(
                            number: "98",
                            text: "Total Booking",
                            image: Asseturl.igTicket),
                        dashboardGridTile(
                            number: "15",
                            text: "Total Service",
                            image: Asseturl.igDocument),
                        dashboardGridTile(
                            number: "30",
                            text: "Handyman",
                            image: Asseturl.igProfile),
                        dashboardGridTile(
                            number: "\$45.3",
                            text: "Total Earning",
                            image: Asseturl.igDiscount),
                      ],
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Text(
                      "Monthly Revenue USD",
                      style: TextStyle(
                          fontFamily: Typo.medium,
                          fontSize: 18.sp,
                          color: Appcolor.blacktextColor),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Image.asset(Asseturl.igChart),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                color: Appcolor.textfieldColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Handyman",
                          style: TextStyle(
                              fontFamily: Typo.medium,
                              fontSize: 18,
                              color: Appcolor.blacktextColor),
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                              fontFamily: Typo.medium,
                              fontSize: 14,
                              color: Appcolor.greytextColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    GridView(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 220,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                          crossAxisCount: 2),
                      children: [
                        handymancard(icon: Asseturl.igActive),
                        handymancard(icon: Asseturl.igDeactivate),
                        handymancard(icon: Asseturl.igDeactivate),
                        handymancard(icon: Asseturl.igDeactivate),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Services",
                          style: TextStyle(
                              fontFamily: Typo.medium,
                              fontSize: 18,
                              color: Appcolor.blacktextColor),
                        ),
                        TextButton(
                          onPressed: () {
                            GoRouter.of(context).goNamed(ServiceList.id);
                          },
                          child: Text(
                            "View All",
                            style: TextStyle(
                                fontFamily: Typo.medium,
                                fontSize: 14,
                                color: Appcolor.greytextColor),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    GridView(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 239,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          crossAxisCount: 2),
                      children: [
                        servicegrid(context),
                        servicegrid(context),
                        servicegrid(context),
                        servicegrid(context),
                        servicegrid(context),
                        servicegrid(context),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 115.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
