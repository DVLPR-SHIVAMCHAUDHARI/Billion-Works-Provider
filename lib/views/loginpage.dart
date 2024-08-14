import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/consts/Asseturl.dart';
import 'package:provider/consts/colorpallete.dart';
import 'package:provider/consts/typography.dart';
import 'package:provider/views/home/home.dart';
import 'package:provider/views/home_screen/homescreen.dart';
import 'package:provider/views/signupPage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  static String id = "loginpage";

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool is_checked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(15),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 90.h,
            ),
            Text(
              "Hello John!",
              style: TextStyle(fontFamily: Typo.medium, fontSize: 22.sp),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              textAlign: TextAlign.center,
              "Welcome Back, You Have Been \n Missed For Long Time",
              style: TextStyle(
                  fontFamily: Typo.medium,
                  fontSize: 16.sp,
                  color: Appcolor.greytextColor),
            ),
            SizedBox(
              height: 79.h,
            ),
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Appcolor.textfieldColor,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none),
                  hintText: "Email Address",
                  hintStyle: TextStyle(
                    color: Appcolor.greytextColor,
                    fontFamily: Typo.medium,
                    fontSize: 14.sp,
                  ),
                  suffixIcon: Image.asset(
                    Asseturl.igMessage,
                    scale: 3,
                  )),
            ),
            SizedBox(
              height: 24.h,
            ),
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Appcolor.textfieldColor,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none),
                  hintText: "Password ",
                  hintStyle: TextStyle(
                    color: Appcolor.greytextColor,
                    fontFamily: Typo.medium,
                    fontSize: 14.sp,
                  ),
                  suffixIcon: Image.asset(
                    Asseturl.igHide,
                    scale: 3,
                  )),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                        activeColor: Appcolor.loginButtonColor,
                        value: is_checked,
                        onChanged: (value) {
                          is_checked = value!;
                          setState(() {});
                        }),
                    Text(
                      "Remember Me",
                      style: TextStyle(
                          fontFamily: Typo.medium,
                          fontSize: 12,
                          color: Appcolor.greytextColor),
                    ),
                  ],
                ),
                Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: Appcolor.loginButtonColor,
                              fontFamily: Typo.Worksans_SemiboldItalic,
                              fontSize: 12),
                        ))
                  ],
                )
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            // Container(
            //   alignment: Alignment.center,
            //   width: 335.w,
            //   height: 45.h,
            //   decoration: BoxDecoration(
            //       color: Appcolor.loginButtonColor,
            //       borderRadius: BorderRadius.circular(12.r)),
            //   child: Text("LOGIN",
            //       style: TextStyle(
            //           fontFamily: Typo.Worksans_Semibold,
            //           fontSize: 16.sp,
            //           color: Colors.white)),
            // )
            SizedBox(
                width: double.infinity,
                height: 45.h,
                child: FilledButton(
                    style: FilledButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r))),
                    onPressed: () {
                      GoRouter.of(context).goNamed(Home.id);
                    },
                    child: Text("LOGIN"))),
            SizedBox(
              height: 16.h,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account?",
                  style: TextStyle(
                      color: Appcolor.greytextColor,
                      fontFamily: Typo.medium,
                      fontSize: 14.sp),
                ),
                TextButton(
                    onPressed: () {
                      GoRouter.of(context).goNamed(Signuppage.id);
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Appcolor.loginButtonColor,
                          fontFamily: Typo.Worksans_SemiboldItalic),
                    ))
              ],
            ),

            SizedBox(
              height: 104.h,
            ),
            Row(
              children: [
                Expanded(
                    child: Divider(
                  color: Appcolor.textfieldColor,
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Or Continue With",
                    style: TextStyle(
                        color: Appcolor.greytextColor,
                        fontFamily: Typo.medium,
                        fontSize: 14.sp),
                  ),
                ),
                Expanded(
                    child: Divider(
                  color: Appcolor.textfieldColor,
                )),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Appcolor.textfieldColor,
                  child: Image.asset(Asseturl.igGoogle, scale: 5),
                ),
                SizedBox(
                  width: 20.w,
                ),
                CircleAvatar(
                  backgroundColor: Appcolor.textfieldColor,
                  child: Image.asset(Asseturl.igPhone, scale: 3),
                ),
              ],
            ),
            SizedBox(
              height: 80.h,
            ),
          ],
        ),
      ),
    ));
  }
}
