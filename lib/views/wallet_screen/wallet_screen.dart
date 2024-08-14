import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/consts/colorpallete.dart';
import 'package:provider/consts/typography.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  static String id = "WalletScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolor.primaryColor,
        title: Text(
          "Payment",
          style: TextStyle(
              color: Colors.white, fontFamily: Typo.medium, fontSize: 18.sp),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              paymentContainer(),
              paymentContainer(),
              paymentContainer(),
            ],
          ),
        ),
      ),
    );
  }

  Container paymentContainer() {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          border: Border.all(color: Appcolor.greybgColor),
          borderRadius: BorderRadius.circular(12)),
      // padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            color: Appcolor.greybgColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Alexis Lockman"), Text("#123")],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ID",
                      style:
                          TextStyle(fontFamily: Typo.medium, fontSize: 14.sp),
                    ),
                    Text(
                      "#12",
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
                Divider(
                  color: Appcolor.greybgColor,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Status",
                      style:
                          TextStyle(fontFamily: Typo.medium, fontSize: 14.sp),
                    ),
                    Text(
                      "Pending",
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
                Divider(
                  color: Appcolor.greybgColor,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Method",
                      style:
                          TextStyle(fontFamily: Typo.medium, fontSize: 14.sp),
                    ),
                    Text(
                      "Cash",
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
                Divider(
                  color: Appcolor.greybgColor,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Amount Paid",
                      style:
                          TextStyle(fontFamily: Typo.medium, fontSize: 14.sp),
                    ),
                    Text(
                      "\$1500",
                      style: TextStyle(
                          color: Appcolor.primaryColor,
                          fontFamily: Typo.Worksans_Semibold,
                          fontSize: 14.sp),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
