import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/consts/asseturl.dart';
import 'package:provider/consts/colorpallete.dart';
import 'package:provider/consts/typography.dart';
import 'package:provider/views/ticket_screen/components/bookingOnTap.dart';
import 'package:provider/views/ticket_screen/components/reviewsCard.dart';
import 'package:velocity_x/velocity_x.dart';

class Reviewonscreen extends StatelessWidget {
  const Reviewonscreen({super.key});

  static String id = "reviewOnservice";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolor.loginButtonColor,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).pop(Bookingontap());
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 20,
          ),
        ),
        titleSpacing: 1,
        title: Text(
          "Review On Services",
          style: TextStyle(
              color: Colors.white, fontFamily: Typo.medium, fontSize: 18.sp),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Customer Review By Service Name",
                style: TextStyle(
                    fontFamily: Typo.medium,
                    fontSize: 18.sp,
                    color: Appcolor.blacktextColor),
              ),
              SizedBox(
                height: 16.h,
              ),
              reviewcard2(),
              reviewcard2(),
              reviewcard2(),
            ],
          ),
        ),
      ),
    );
  }
}
