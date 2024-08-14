import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/consts/asseturl.dart';
import 'package:provider/consts/colorpallete.dart';
import 'package:provider/consts/typography.dart';
import 'package:provider/views/ticket_screen/components/bookingOnTap.dart';
import 'package:provider/views/wallet_screen/wallet_screen.dart';

import 'package:velocity_x/velocity_x.dart';

class BookingScreen extends StatefulWidget {
  BookingScreen({super.key});

  static String id = "BookingScreen";

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  List status = ["All", "Completed", "Pending", "Rejected"];

  showBookingSummary() {
    showDialog(
      context: context,
      builder: (context) => Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12.r)),
        margin: EdgeInsets.symmetric(vertical: 75, horizontal: 20),
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              padding: EdgeInsets.symmetric(vertical: 16.5, horizontal: 24),
              decoration: BoxDecoration(color: Appcolor.loginButtonColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Booking Summary",
                    style: TextStyle(
                        fontFamily: Typo.medium,
                        fontSize: 16.sp,
                        color: Colors.white),
                  ),
                  Icon(
                    Icons.close,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  Container(
                    child: Image.asset(Asseturl.igsummary1image),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Car Wash And Cleaning",
                        style: TextStyle(
                            color: Appcolor.blacktextColor,
                            fontFamily: Typo.medium,
                            fontSize: 16.sp),
                      ),
                      Text(
                        "\$120",
                        style: TextStyle(
                            color: Appcolor.loginButtonColor,
                            fontFamily: Typo.Worksans_Semibold,
                            fontSize: 22.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Date",
                        style:
                            TextStyle(fontFamily: Typo.medium, fontSize: 12.sp),
                      ),
                      Text(
                        "25 Feb, 2022",
                        style: TextStyle(
                            color: Appcolor.greytextColor,
                            fontFamily: Typo.medium,
                            fontSize: 12.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Divider(
                    color: Appcolor.greybgColor,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Time",
                        style:
                            TextStyle(fontFamily: Typo.medium, fontSize: 12.sp),
                      ),
                      Text(
                        "08:30 AM",
                        style: TextStyle(
                            color: Appcolor.greytextColor,
                            fontFamily: Typo.medium,
                            fontSize: 12.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Divider(
                    color: Appcolor.greybgColor,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Location",
                        style:
                            TextStyle(fontFamily: Typo.medium, fontSize: 12.sp),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "4517 Washington Ave.",
                            style: TextStyle(
                                color: Appcolor.greytextColor,
                                fontFamily: Typo.medium,
                                fontSize: 12.sp),
                          ),
                          Text(
                            "Manchester, Kentucky 39495",
                            style: TextStyle(
                                color: Appcolor.greytextColor,
                                fontFamily: Typo.medium,
                                fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Divider(
                    color: Appcolor.greybgColor,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Service Status",
                        style:
                            TextStyle(fontFamily: Typo.medium, fontSize: 12.sp),
                      ),
                      Text(
                        "Accepted",
                        style: TextStyle(
                            color: Appcolor.greytextColor,
                            fontFamily: Typo.medium,
                            fontSize: 12.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Divider(
                    color: Appcolor.greybgColor,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Quantity",
                        style:
                            TextStyle(fontFamily: Typo.medium, fontSize: 12.sp),
                      ),
                      Text(
                        "*1",
                        style: TextStyle(
                            color: Appcolor.greytextColor,
                            fontFamily: Typo.medium,
                            fontSize: 12.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Divider(
                    color: Appcolor.greybgColor,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Payment Status",
                        style:
                            TextStyle(fontFamily: Typo.medium, fontSize: 12.sp),
                      ),
                      Text(
                        "Pending  ",
                        style: TextStyle(
                            color: Appcolor.greytextColor,
                            fontFamily: Typo.medium,
                            fontSize: 12.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 45.h,
                    child: FilledButton(
                      style: ButtonStyle(
                          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)))),
                      onPressed: () {
                        context.pop();
                        showAssignHandyman();
                      },
                      child: Text(
                        "Confirm",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: Typo.medium,
                            fontSize: 14.sp),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  showAssignHandyman() {
    showDialog(
        context: context,
        builder: (context) => Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              margin: EdgeInsets.symmetric(vertical: 99, horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    alignment: Alignment.center,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Appcolor.loginButtonColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Assign Handyman",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: Typo.medium,
                              fontSize: 16.sp),
                        ),
                        IconButton(
                            onPressed: () {
                              context.pop();
                            },
                            icon: Icon(
                              Icons.close,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 400.h,
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              AssignHandymancard(),
                              SizedBox(
                                height: 16.h,
                              ),
                              Divider(
                                color: Appcolor.greybgColor,
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              AssignHandymancard(),
                              SizedBox(
                                height: 16.h,
                              ),
                              Divider(
                                color: Appcolor.greybgColor,
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              AssignHandymancard(),
                              SizedBox(
                                height: 16.h,
                              ),
                              Divider(
                                color: Appcolor.greybgColor,
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              AssignHandymancard(),
                              SizedBox(
                                height: 16.h,
                              ),
                              Divider(
                                color: Appcolor.greybgColor,
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              AssignHandymancard(),
                              SizedBox(
                                height: 16.h,
                              ),
                              Divider(
                                color: Appcolor.greybgColor,
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              AssignHandymancard(),
                              SizedBox(
                                height: 16.h,
                              ),
                              Divider(
                                color: Appcolor.greybgColor,
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              AssignHandymancard(),
                              SizedBox(
                                height: 16.h,
                              ),
                              Divider(
                                color: Appcolor.greybgColor,
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 23.h,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 45.h,
                          child: FilledButton(
                            style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5)))),
                            onPressed: () {
                              context.pop();
                              GoRouter.of(context).pushNamed(WalletScreen.id);
                            },
                            child: Text(
                              "Confirm",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: Typo.medium,
                                  fontSize: 14.sp),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ));
  }

  Row AssignHandymancard() {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(Asseturl.icHandyman),
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Naomie Hackett",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: Typo.medium,
                  fontSize: 14.sp),
            ),
            Text(
              "Member since 2015",
              style: TextStyle(
                  color: Appcolor.greytextColor,
                  fontFamily: Typo.medium,
                  fontSize: 14.sp),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolor.loginButtonColor,
        title: Text(
          "Booking",
          style: TextStyle(
              color: Colors.white, fontFamily: Typo.medium, fontSize: 18.sp),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 24.h,
                ),
                DropdownButtonFormField(
                    items: status
                        .map((e) => DropdownMenuItem(
                              child: Text(e),
                              value: e,
                            ))
                        .toList(),
                    onChanged: (value) {}),
                bookingcontainer(),
                bookingcontainer(),
                bookingcontainer(),
                bookingcontainer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bookingcontainer() {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).goNamed(Bookingontap.id);
      },
      child: Container(
        padding: EdgeInsets.all(16),
        width: 335.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: Appcolor.greybgColor)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Stack(
                children: [
                  Image.asset(Asseturl.icBookingimage1),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      alignment: Alignment.center,
                      height: 26.h,
                      width: 71.w,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(170)),
                      child: Text(
                        "Pending",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontFamily: Typo.medium),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 22.5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Apartment Cleaning",
                  style: TextStyle(
                      fontFamily: Typo.medium,
                      fontSize: 16.sp,
                      color: Appcolor.blacktextColor),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 24.h,
                  width: 52.w,
                  decoration: BoxDecoration(
                      color: Appcolor.loginButtonColor,
                      borderRadius: BorderRadius.circular(170)),
                  child: Text(
                    "#123",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontFamily: Typo.Worksans_Semibold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                Text("\$120",
                    style: TextStyle(
                        color: Appcolor.loginButtonColor,
                        fontSize: 22.sp,
                        fontFamily: Typo.bold)),
                SizedBox(
                  width: 10.w,
                ),
                Text("21% Off",
                    style: TextStyle(
                        color: Appcolor.greentextColor,
                        fontSize: 12.sp,
                        fontFamily: Typo.Worksans_Semibold))
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                SvgPicture.asset(Asseturl.icLocation),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "4517 Washington Ave. Manchester, Kentucky\n39495",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: Typo.medium,
                      color: Appcolor.greytextColor),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                SvgPicture.asset(Asseturl.icCalender),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "02 Febuary, 2022 At ",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: Typo.medium,
                      color: Appcolor.greytextColor),
                ),
                Text("8:30 AM",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: Typo.medium,
                    ))
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                SvgPicture.asset(Asseturl.icProfile),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "Arlene McCoy",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: Typo.medium,
                      color: Appcolor.greytextColor),
                )
              ],
            ),
            Divider(
              color: Appcolor.greybgColor,
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 140.w,
                  height: 38.h,
                  child: FilledButton(
                      style: FilledButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.r))),
                      onPressed: () {
                        showBookingSummary();
                      },
                      child: Text(
                        "Accept",
                        style:
                            TextStyle(fontFamily: Typo.medium, fontSize: 14.sp),
                      )),
                ),
                SizedBox(
                  width: 20.w,
                ),
                SizedBox(
                  width: 140.w,
                  height: 38.h,
                  child: FilledButton(
                      style: FilledButton.styleFrom(
                          backgroundColor: Appcolor.greybgColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.r))),
                      onPressed: () {},
                      child: Text(
                        "Decline",
                        style: TextStyle(
                          fontFamily: Typo.medium,
                          fontSize: 14.sp,
                          color: Appcolor.blacktextColor,
                        ),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
