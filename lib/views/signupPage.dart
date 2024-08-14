import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/consts/asseturl.dart';
import 'package:provider/consts/colorpallete.dart';
import 'package:provider/consts/typography.dart';
import 'package:provider/views/loginpage.dart';
import 'package:provider/views/home_screen/homescreen.dart';

class Signuppage extends StatelessWidget {
  const Signuppage({super.key});

  static String id = "signupPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 77.h,
              ),
              SvgPicture.asset(Asseturl.iguserImage),
              SizedBox(
                height: 24.h,
              ),
              Text(
                "Hello User!",
                style: TextStyle(
                    fontFamily: Typo.medium,
                    fontSize: 22.sp,
                    color: Appcolor.blacktextColor),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                "Create Your Account For \n   Better Experience",
                style: TextStyle(
                    fontFamily: Typo.medium,
                    fontSize: 16.sp,
                    color: Appcolor.greytextColor),
              ),
              SizedBox(
                height: 38.h,
              ),
              TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Appcolor.textfieldColor,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none),
                      hintText: "Full Name",
                      hintStyle: TextStyle(
                        color: Appcolor.greytextColor,
                        fontFamily: Typo.medium,
                        fontSize: 14.sp,
                      ),
                      suffixIcon: Image.asset(
                        Asseturl.igProfile,
                        scale: 3,
                      ))),
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
                    hintText: "Username",
                    hintStyle: TextStyle(
                      color: Appcolor.greytextColor,
                      fontFamily: Typo.medium,
                      fontSize: 14.sp,
                    ),
                    suffixIcon: Image.asset(
                      Asseturl.igProfile,
                      scale: 3,
                    )),
              ),
              SizedBox(
                height: 24.h,
              ),
              TextField(
                decoration: InputDecoration(
                    labelStyle: TextStyle(
                        color: Appcolor.greytextColor, fontFamily: Typo.medium),
                    hintStyle: TextStyle(
                        color: Appcolor.greytextColor,
                        fontSize: 14,
                        fontFamily: Typo.medium),
                    hintText: "saul@user.com",
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
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
                    hintText: "Contact Number",
                    hintStyle: TextStyle(
                      color: Appcolor.greytextColor,
                      fontFamily: Typo.medium,
                      fontSize: 14.sp,
                    ),
                    suffixIcon: Image.asset(
                      Asseturl.igPhone,
                      scale: 4,
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
                    hintText: "Password",
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
                height: 24.h,
              ),
              SizedBox(
                width: double.infinity,
                height: 45.h,
                child: FilledButton(
                  style: FilledButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r))),
                  onPressed: () {
                    GoRouter.of(context).goNamed(Homescreen.id);
                  },
                  child: Text("SIGNUP"),
                ),
              ),
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
                        GoRouter.of(context).goNamed(Loginpage.id);
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Appcolor.loginButtonColor,
                            fontFamily: Typo.Worksans_SemiboldItalic),
                      ))
                ],
              ),
              SizedBox(
                height: 40.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
