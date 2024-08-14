import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/consts/Asseturl.dart';
import 'package:provider/consts/colorpallete.dart';
import 'package:provider/consts/typography.dart';
import 'package:provider/views/home/home.dart';
import 'package:provider/views/auth/signupPage.dart';
import 'package:provider/views/shared_widgets/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static String id = "loginpage";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;

  TextEditingController emailField = TextEditingController();
  TextEditingController passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
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
            customTextField(
              controller: emailField,
              hintText: "Email Address",
              suffixIcon: Asseturl.igMessage,
            ),
            SizedBox(
              height: 24.h,
            ),
            customTextField(
              controller: passwordField,
              hintText: "Password",
              suffixIcon: Asseturl.igHide,
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
                        activeColor: Appcolor.primaryColor,
                        value: isChecked,
                        onChanged: (value) {
                          isChecked = value!;
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
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                        color: Appcolor.primaryColor,
                        fontFamily: Typo.Worksans_SemiboldItalic,
                        fontSize: 12),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            SizedBox(
              width: double.infinity,
              height: 45.h,
              child: FilledButton(
                onPressed: () {
                  GoRouter.of(context).goNamed(Home.id);
                },
                child: Text("LOGIN"),
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
                      GoRouter.of(context).goNamed(Signuppage.id);
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Appcolor.primaryColor,
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
                  ),
                ),
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
          ],
        ),
      ),
    ));
  }
}
