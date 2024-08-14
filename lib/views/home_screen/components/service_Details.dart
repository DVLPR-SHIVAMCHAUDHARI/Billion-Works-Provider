import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/consts/asseturl.dart';
import 'package:provider/consts/colorpallete.dart';
import 'package:provider/consts/typography.dart';

class ServiceDetails extends StatelessWidget {
  const ServiceDetails({super.key});

  static String id = "servicedetail";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(clipBehavior: Clip.none, children: [
              Container(
                clipBehavior: Clip.none,
                child: Image.asset(Asseturl.igserviceDetail1),
              ),
              Positioned(
                top: 47,
                left: 20,
                child: IconButton.filled(
                    style: ButtonStyle(
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)))),
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back_ios_new)),
              ),
              Positioned(
                top: 47,
                right: 20,
                child: IconButton.filled(
                    style: ButtonStyle(
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)))),
                    onPressed: () {},
                    icon: Icon(Icons.more_horiz)),
              ),
              Positioned(
                top: 263,
                left: 20,
                right: 20,
                child: Container(
                  width: 335,
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                  margin: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("TV Wall Mount Installation"),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        children: [
                          Text("\$500"),
                          SizedBox(
                            width: 12.w,
                          ),
                          Text("10% off"),
                        ],
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Duration :",
                            style: TextStyle(
                                color: Appcolor.blacktextColor,
                                fontSize: 14,
                                fontFamily: Typo.medium),
                          ),
                          Text(
                            "01 Hour",
                            style: TextStyle(
                                color: Appcolor.primaryColor,
                                fontSize: 14,
                                fontFamily: Typo.medium),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Duration :",
                            style: TextStyle(
                                color: Appcolor.blacktextColor,
                                fontSize: 14,
                                fontFamily: Typo.medium),
                          ),
                          Text(
                            "01 Hour",
                            style: TextStyle(
                                color: Appcolor.primaryColor,
                                fontSize: 14,
                                fontFamily: Typo.medium),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}
