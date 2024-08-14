import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/consts/Asseturl.dart';
import 'package:provider/consts/colorpallete.dart';
import 'package:provider/consts/typography.dart';
import 'package:provider/views/ticket_screen/bookingScreen.dart';
import 'package:provider/views/ticket_screen/components/reviewsCard.dart';
import 'package:provider/views/ticket_screen/reviewOnscreen.dart';
import 'package:velocity_x/velocity_x.dart';

class Bookingontap extends StatelessWidget {
  const Bookingontap({super.key});

  showBottomSheet(context) {
    showModalBottomSheet(
      isScrollControlled: true,
      showDragHandle: true,
      context: context,
      builder: (context) => Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.r), topRight: Radius.circular(12.r)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Booking History",
                  style: TextStyle(
                      color: Appcolor.blacktextColor,
                      fontFamily: Typo.medium,
                      fontSize: 16.sp),
                ),
                Text(
                  "ID : #123",
                  style: TextStyle(
                      color: Appcolor.primaryColor,
                      fontFamily: Typo.Worksans_Semibold,
                      fontSize: 14.sp),
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Divider(
              color: Appcolor.greybgColor,
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1:17 PM",
                      style: TextStyle(
                          color: Appcolor.greytextColor,
                          fontFamily: Typo.medium,
                          fontSize: 16.sp),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      "6 Feb",
                      style: TextStyle(
                          color: Appcolor.blacktextColor,
                          fontFamily: Typo.medium,
                          fontSize: 14.sp),
                    ),
                  ],
                ),
                SizedBox(
                  width: 24.w,
                ),
                SizedBox(
                  height: 100.h,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 8.r,
                        backgroundColor: Appcolor.redColor,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      ...List.generate(
                          10,
                          (index) => Expanded(
                              child: Padding(
                                  padding: EdgeInsets.only(bottom: 2),
                                  child: VerticalDivider(
                                    color: Appcolor.redColor,
                                  ))))
                    ],
                  ),
                ),
                SizedBox(
                  width: 24.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "New Booking",
                      style: TextStyle(
                          color: Appcolor.blacktextColor,
                          fontFamily: Typo.medium,
                          fontSize: 16.sp),
                    ),
                    Text(
                      "New Booking Added by\n customer",
                      style: TextStyle(
                          color: Appcolor.greytextColor,
                          fontFamily: Typo.medium,
                          fontSize: 14.sp),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1:21 PM",
                      style: TextStyle(
                          color: Appcolor.greytextColor,
                          fontFamily: Typo.medium,
                          fontSize: 16.sp),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      "6 Feb",
                      style: TextStyle(
                          color: Appcolor.blacktextColor,
                          fontFamily: Typo.medium,
                          fontSize: 14.sp),
                    ),
                  ],
                ),
                SizedBox(
                  width: 24.w,
                ),
                SizedBox(
                  height: 100.h,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 8.r,
                        backgroundColor: Appcolor.greentextColor,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      ...List.generate(
                          10,
                          (index) => Expanded(
                              child: Padding(
                                  padding: EdgeInsets.only(bottom: 2),
                                  child: VerticalDivider(
                                    color: Appcolor.greentextColor,
                                  ))))
                    ],
                  ),
                ),
                SizedBox(
                  width: 24.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Accept Booking",
                      style: TextStyle(
                          color: Appcolor.blacktextColor,
                          fontFamily: Typo.medium,
                          fontSize: 16.sp),
                    ),
                    Text(
                      "Status changed From \npending to accept",
                      style: TextStyle(
                          color: Appcolor.greytextColor,
                          fontFamily: Typo.medium,
                          fontSize: 14.sp),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1:22 PM",
                      style: TextStyle(
                          color: Appcolor.greytextColor,
                          fontFamily: Typo.medium,
                          fontSize: 16.sp),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      "6 Feb",
                      style: TextStyle(
                          color: Appcolor.blacktextColor,
                          fontFamily: Typo.medium,
                          fontSize: 14.sp),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10.w,
                ),
                SizedBox(
                  height: 100.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 8.r,
                        backgroundColor: Appcolor.safronColor,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 24.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Assigned Booking",
                      style: TextStyle(
                          color: Appcolor.blacktextColor,
                          fontFamily: Typo.medium,
                          fontSize: 16.sp),
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: "Booking has assigned \n to ",
                        style: TextStyle(
                            color: Appcolor.greytextColor,
                            fontFamily: Typo.medium,
                            fontSize: 14.sp),
                      ),
                      TextSpan(
                        text: "Naomie Hackett",
                        style: TextStyle(
                            color: Appcolor.blacktextColor,
                            fontFamily: Typo.medium,
                            fontSize: 14.sp),
                      )
                    ]))
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  static String id = "Bookingontap";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolor.primaryColor,
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).pop(BookingScreen());
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 20,
            color: Colors.white,
          ),
        ),
        titleSpacing: 1,
        title: Text(
          "Pending",
          style: TextStyle(
              color: Colors.white, fontFamily: Typo.medium, fontSize: 16.sp),
        ),
        actions: [
          TextButton(
            onPressed: () {
              showBottomSheet(context);
            },
            child: Text(
              "Check Status",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: Typo.medium,
                  fontSize: 14.sp),
            ),
          ),
          SizedBox(
            width: 20.w,
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 24.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Booking ID",
                    style: TextStyle(
                        color: Appcolor.greytextColor,
                        fontFamily: Typo.medium,
                        fontSize: 16.sp),
                  ),
                  Text(
                    "#123",
                    style: TextStyle(
                        color: Appcolor.primaryColor,
                        fontFamily: Typo.Worksans_Semibold,
                        fontSize: 18.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Divider(),
              SizedBox(
                height: 24.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Apartment Cleaning",
                        style: TextStyle(
                            color: Appcolor.blacktextColor,
                            fontFamily: Typo.medium,
                            fontSize: 18.sp),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "Date :",
                            style: TextStyle(
                                color: Appcolor.blacktextColor,
                                fontFamily: Typo.medium,
                                fontSize: 14.sp),
                          ),
                          Text(
                            "26 Jan, 2022",
                            style: TextStyle(
                                color: Appcolor.greytextColor,
                                fontFamily: Typo.medium,
                                fontSize: 14.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "Time :",
                            style: TextStyle(
                                color: Appcolor.blacktextColor,
                                fontFamily: Typo.medium,
                                fontSize: 14.sp),
                          ),
                          Text(
                            "04:00 PM",
                            style: TextStyle(
                                color: Appcolor.greytextColor,
                                fontFamily: Typo.medium,
                                fontSize: 14.sp),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    child: Image.asset(
                      Asseturl.icpendingImage1,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Text("About Handyman",
                  style: TextStyle(
                      color: Appcolor.blacktextColor,
                      fontFamily: Typo.medium,
                      fontSize: 16.sp)),
              Container(
                padding: EdgeInsets.all(24),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Appcolor.greybgColor,
                    borderRadius: BorderRadius.circular(12.r)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 80.w,
                          height: 80.h,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              Asseturl.icHandyman,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Justine Boyle",
                              style: TextStyle(
                                  fontFamily: Typo.medium,
                                  fontSize: 18.sp,
                                  color: Appcolor.blacktextColor),
                            ),
                            Text(
                              "Cleaning Expert",
                              style: TextStyle(
                                  fontFamily: Typo.medium,
                                  fontSize: 14.sp,
                                  color: Appcolor.greytextColor),
                            ),
                            Row(
                              children: [
                                VxRating(
                                  selectionColor: Colors.yellow.shade700,
                                  isSelectable: false,
                                  value: 10,
                                  onRatingUpdate: (value) {},
                                ),
                                Text(
                                  "4.5",
                                  style:
                                      TextStyle(color: Appcolor.greytextColor),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 134.w,
                          height: 38.h,
                          child: FilledButton(
                              style: FilledButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.r))),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    Asseturl.igPhone,
                                    color: Colors.white,
                                    scale: 4,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Call",
                                    style: TextStyle(
                                        fontFamily: Typo.medium,
                                        fontSize: 14.sp),
                                  ),
                                ],
                              )),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        SizedBox(
                          width: 134.w,
                          height: 38.h,
                          child: FilledButton(
                              style: FilledButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.r))),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    Asseturl.igChat,
                                    color: Appcolor.blacktextColor,
                                    scale: 4,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Chat",
                                    style: TextStyle(
                                      fontFamily: Typo.medium,
                                      fontSize: 14.sp,
                                      color: Appcolor.blacktextColor,
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      "Rate Handyman",
                      style: TextStyle(
                          fontFamily: Typo.medium,
                          color: Appcolor.primaryColor,
                          fontSize: 14.sp),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                "About Customer",
                style: TextStyle(
                    color: Appcolor.blacktextColor,
                    fontSize: 16.sp,
                    fontFamily: Typo.medium),
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                padding: EdgeInsets.all(24),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Appcolor.greybgColor,
                    borderRadius: BorderRadius.circular(12.r)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 80.w,
                          height: 80.h,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              Asseturl.icCustomer,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Leslie Alexander",
                              style: TextStyle(
                                  fontFamily: Typo.medium,
                                  fontSize: 18.sp,
                                  color: Appcolor.blacktextColor),
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  Asseturl.igMessage,
                                  color: Appcolor.blacktextColor,
                                  scale: 5,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  "example@gmail.com",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontFamily: Typo.medium,
                                      color: Appcolor.greytextColor),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  Asseturl.icLocation,
                                  height: 14.h,
                                  width: 14.w,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  "1901 Thornridge Cirav...",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontFamily: Typo.medium,
                                      color: Appcolor.greytextColor),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 134.w,
                          height: 38.h,
                          child: FilledButton(
                              style: FilledButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.r))),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    Asseturl.igPhone,
                                    color: Colors.white,
                                    scale: 4,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Call",
                                    style: TextStyle(
                                        fontFamily: Typo.medium,
                                        fontSize: 14.sp),
                                  ),
                                ],
                              )),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        SizedBox(
                          width: 134.w,
                          height: 38.h,
                          child: FilledButton(
                              style: FilledButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.r))),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    Asseturl.igChat,
                                    color: Appcolor.blacktextColor,
                                    scale: 4,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Chat",
                                    style: TextStyle(
                                      fontFamily: Typo.medium,
                                      fontSize: 14.sp,
                                      color: Appcolor.blacktextColor,
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton(
                          style: FilledButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.r))),
                          onPressed: () {},
                          child: Text("Cancel Booking")),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Payment Details",
                style: TextStyle(
                  fontFamily: Typo.medium,
                  fontSize: 16.sp,
                  color: Appcolor.blacktextColor,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                padding: EdgeInsets.all(16),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Appcolor.greybgColor,
                    borderRadius: BorderRadius.circular(12.r)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "ID",
                          style: TextStyle(
                            fontFamily: Typo.medium,
                            fontSize: 14.sp,
                            color: Appcolor.blacktextColor,
                          ),
                        ),
                        Text(
                          "#123",
                          style: TextStyle(
                            fontFamily: Typo.bold,
                            fontSize: 14.sp,
                            color: Appcolor.primaryColor,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Divider(),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Method",
                          style: TextStyle(
                            fontFamily: Typo.medium,
                            fontSize: 14.sp,
                            color: Appcolor.blacktextColor,
                          ),
                        ),
                        Text(
                          "Cash",
                          style: TextStyle(
                            fontFamily: Typo.medium,
                            fontSize: 14.sp,
                            color: Appcolor.greytextColor,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Divider(),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Status ",
                          style: TextStyle(
                            fontFamily: Typo.medium,
                            fontSize: 14.sp,
                            color: Appcolor.blacktextColor,
                          ),
                        ),
                        Text(
                          "Pending",
                          style: TextStyle(
                            fontFamily: Typo.medium,
                            fontSize: 14.sp,
                            color: Appcolor.greentextColor,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Divider(),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Subtotal",
                          style: TextStyle(
                            fontFamily: Typo.medium,
                            fontSize: 14.sp,
                            color: Appcolor.blacktextColor,
                          ),
                        ),
                        Text(
                          "\$459",
                          style: TextStyle(
                            fontFamily: Typo.medium,
                            fontSize: 14.sp,
                            color: Appcolor.greytextColor,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                "Price Detail",
                style: TextStyle(
                  fontFamily: Typo.medium,
                  fontSize: 16.sp,
                  color: Appcolor.blacktextColor,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                padding: EdgeInsets.all(16),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Appcolor.greybgColor,
                    borderRadius: BorderRadius.circular(12.r)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Rate",
                          style: TextStyle(
                            fontFamily: Typo.medium,
                            fontSize: 14.sp,
                            color: Appcolor.blacktextColor,
                          ),
                        ),
                        Text(
                          "\$45.00",
                          style: TextStyle(
                            fontFamily: Typo.medium,
                            fontSize: 14.sp,
                            color: Appcolor.greytextColor,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Divider(),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Quantity",
                          style: TextStyle(
                            fontFamily: Typo.medium,
                            fontSize: 14.sp,
                            color: Appcolor.blacktextColor,
                          ),
                        ),
                        Text(
                          "*2",
                          style: TextStyle(
                            fontFamily: Typo.medium,
                            fontSize: 14.sp,
                            color: Appcolor.greytextColor,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Divider(),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(TextSpan(children: [
                          TextSpan(
                            text: "Discount",
                            style: TextStyle(
                              fontFamily: Typo.medium,
                              fontSize: 14.sp,
                              color: Appcolor.blacktextColor,
                            ),
                          ),
                          TextSpan(
                              text: " (5% off)",
                              style: TextStyle(
                                color: Appcolor.greentextColor,
                                fontFamily: Typo.medium,
                                fontSize: 14.sp,
                              ))
                        ])),
                        Text(
                          "-\$23.66",
                          style: TextStyle(
                            fontFamily: Typo.medium,
                            fontSize: 14.sp,
                            color: Appcolor.greentextColor,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Divider(),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(TextSpan(children: [
                          TextSpan(
                            text: "Coupon",
                            style: TextStyle(
                              fontFamily: Typo.medium,
                              fontSize: 14.sp,
                              color: Appcolor.blacktextColor,
                            ),
                          ),
                          TextSpan(
                              text: " (AB45789A)",
                              style: TextStyle(
                                color: Appcolor.greytextColor,
                                fontFamily: Typo.medium,
                                fontSize: 14.sp,
                              ))
                        ])),
                        Text(
                          "\$459",
                          style: TextStyle(
                            fontFamily: Typo.medium,
                            fontSize: 14.sp,
                            color: Appcolor.greentextColor,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Divider(),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Subtotal",
                          style: TextStyle(
                            fontFamily: Typo.medium,
                            fontSize: 14.sp,
                            color: Appcolor.blacktextColor,
                          ),
                        ),
                        Text(
                          "\$459",
                          style: TextStyle(
                            fontFamily: Typo.medium,
                            fontSize: 14.sp,
                            color: Appcolor.greytextColor,
                          ),
                        )
                      ],
                    ),
                    Divider(),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Amount",
                          style: TextStyle(
                            fontFamily: Typo.Worksans_Semibold,
                            fontSize: 16.sp,
                            color: Appcolor.blacktextColor,
                          ),
                        ),
                        Text(
                          "\$1255",
                          style: TextStyle(
                            fontFamily: Typo.Worksans_Semibold,
                            fontSize: 16.sp,
                            color: Appcolor.primaryColor,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Reviews",
                    style: TextStyle(
                        fontFamily: Typo.medium,
                        fontSize: 16.sp,
                        color: Appcolor.blacktextColor),
                  ),
                  TextButton(
                      onPressed: () {
                        GoRouter.of(context).goNamed(Reviewonscreen.id);
                      },
                      child: Text(
                        "View All",
                        style: TextStyle(
                            fontFamily: Typo.medium,
                            fontSize: 12.sp,
                            color: Appcolor.greytextColor),
                      ))
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              reviewssupercard(),
              SizedBox(
                height: 24.h,
              ),
              reviewssupercard(),
            ],
          ),
        ),
      ),
    );
  }
}
