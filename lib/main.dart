import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/consts/colorpallete.dart';
import 'package:provider/views/home/home.dart';
import 'package:provider/views/home_screen/components/service_Details.dart';
import 'package:provider/views/auth/loginpage.dart';
import 'package:provider/views/home_screen/servicelist/service_list_1.dart';
import 'package:provider/views/auth/signupPage.dart';
import 'package:provider/views/auth/splashscreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/views/ticket_screen/components/bookingOnTap.dart';
import 'package:provider/views/ticket_screen/reviewOnscreen.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(BillionWorksProvider());
}

class BillionWorksProvider extends StatelessWidget {
  BillionWorksProvider({super.key});

  GoRouter router = GoRouter(navigatorKey: navigatorKey, routes: [
    GoRoute(
      path: "/",
      name: Splashscreen.id,
      builder: (context, state) => Splashscreen(),
    ),
    GoRoute(
        path: "/loginPage",
        name: LoginPage.id,
        builder: (context, state) => LoginPage(),
        routes: [
          GoRoute(
            path: "signupPage",
            name: Signuppage.id,
            builder: (context, state) => Signuppage(),
          ),
        ]),
    GoRoute(
      path: "/home",
      name: Home.id,
      builder: (context, state) => Home(),
      routes: [
        GoRoute(
          path: "serviceDetail",
          name: ServiceDetails.id,
          builder: (context, state) => ServiceDetails(),
        ),
        GoRoute(
          path: "serviceList",
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
      designSize: const Size(375, 812),
      builder: (context, widget) => MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          //FILLED BUTTON THEME

          filledButtonTheme: FilledButtonThemeData(
            style: ButtonStyle(
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
            ),
          ),

          // COLOR SCHEME

          colorScheme: ColorScheme.light(
            primary: Appcolor.primaryColor,
          ),

          scaffoldBackgroundColor: Color(0xffffffff),
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: Appcolor.textfieldColor,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none),
          ),
        ),
      ),
    );
  }
}
