import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/consts/Asseturl.dart';
import 'package:provider/consts/colorpallete.dart';
import 'package:provider/views/home_screen/homescreen.dart';
import 'package:provider/views/notification_screen/notification_screen.dart';
import 'package:provider/views/ticket_screen/bookingScreen.dart';
import 'package:provider/views/wallet_screen/wallet_screen.dart';

class Home extends StatefulWidget {
  Home({super.key});

  static String id = "Home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedTabIndex = 0;
  List screens = [
    Homescreen(),
    BookingScreen(),
    WalletScreen(),
    Notificationscreen()
  ];

  List icons = [
    Asseturl.iconHome,
    Asseturl.iconWallet,
    Asseturl.iconNotifications,
    Asseturl.iconBookings,
  ];

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 80.h,
        child: GestureDetector(
          onTap: () {
            setState(() {});
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              icons.length,
              (index) => GestureDetector(
                onTap: () {
                  selectedTabIndex = index;
                  pageController.animateToPage(index,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease);
                  setState(() {});
                },
                child: SvgPicture.asset(
                  icons[index],
                  color: index == selectedTabIndex
                      ? Appcolor.primaryColor
                      : Appcolor.greytextColor,
                  width: 20,
                  height: 20,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ),
        ),
      ),
      body: PageView(
        onPageChanged: (value) {
          selectedTabIndex = value;
          setState(() {});
        },
        controller: pageController,
        children: [
          Homescreen(),
          BookingScreen(),
          WalletScreen(),
          Notificationscreen()
        ],
      ),
    );
  }
}
