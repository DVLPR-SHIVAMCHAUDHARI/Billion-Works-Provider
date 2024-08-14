import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/consts/colorpallete.dart';
import 'package:provider/views/home/home.dart';
import 'package:provider/views/home_screen/components/service_Details.dart';
import 'package:provider/views/home_screen/components/service_Grid.dart';
import 'package:provider/views/loginpage.dart';
import 'package:provider/views/home_screen/homescreen.dart';
import 'package:provider/views/home_screen/servicelist/service_list_1.dart';
import 'package:provider/views/signupPage.dart';
import 'package:provider/views/splashscreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/views/ticket_screen/bookingScreen.dart';
import 'package:provider/views/ticket_screen/components/bookingOnTap.dart';
import 'package:provider/views/ticket_screen/reviewOnscreen.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(provider());
}

class provider extends StatelessWidget {
  provider({super.key});

  GoRouter router = GoRouter(navigatorKey: navigatorKey, routes: [
    GoRoute(
      path: "/",
      name: Splashscreen.id,
      builder: (context, state) => Splashscreen(),
    ),
    GoRoute(
        path: "/loginpage",
        name: Loginpage.id,
        builder: (context, state) => Loginpage(),
        routes: [
          GoRoute(
            path: "signupPage",
            name: Signuppage.id,
            builder: (context, state) => Signuppage(),
          ),
        ]),
    GoRoute(
      path: "/Home",
      name: Home.id,
      builder: (context, state) => Home(),
      routes: [
        GoRoute(
          path: "service_Detail",
          name: ServiceDetails.id,
          builder: (context, state) => ServiceDetails(),
        ),
        GoRoute(
          path: "service_list",
          name: ServiceList.id,
          builder: (context, state) => ServiceList(),
        ),
        GoRoute(
            path: "BookingOnTap",
            name: Bookingontap.id,
            builder: (context, state) => Bookingontap(),
            routes: [
              GoRoute(
                path: "ReviewOnsevice",
                name: Reviewonscreen.id,
                builder: (context, state) => Reviewonscreen(),
              )
            ])
      ],
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Color(0xffffffff),
            inputDecorationTheme: InputDecorationTheme(
              filled: true,
              fillColor: Appcolor.textfieldColor,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none),
            )),
      ),
    );
  }
}
