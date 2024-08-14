import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:go_router/go_router.dart';
import 'package:provider/consts/Asseturl.dart';
import 'package:provider/consts/colorpallete.dart';
import 'package:provider/consts/typography.dart';
import 'package:provider/views/auth/loginpage.dart';

class Splashscreen extends StatelessWidget {
  Splashscreen({super.key});

  static String id = "Splashscreen";

  changeScreen(context) {
    Future.delayed(Duration(seconds: 2), () {
      GoRouter.of(context).goNamed(LoginPage.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    changeScreen(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Asseturl.icProviderlogo,
              height: 100.h,
              width: 100.w,
            ),
            Text(
              "Provider",
              style: TextStyle(
                fontSize: 30.sp,
                fontFamily: Typo.medium,
                color: Appcolor.blacktextColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
