import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/consts/asseturl.dart';
import 'package:provider/consts/colorpallete.dart';
import 'package:provider/consts/typography.dart';
import 'package:provider/views/home_screen/components/service_Grid.dart';
import 'package:provider/views/home_screen/components/service_list.dart';
import 'package:velocity_x/velocity_x.dart';

class ServiceList extends StatefulWidget {
  ServiceList({super.key});

  static String id = "Servicelist";

  @override
  State<ServiceList> createState() => _ServiceListState();
}

class _ServiceListState extends State<ServiceList> {
  bool gridView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Appcolor.primaryColor,
        title: Text(
          "Service List",
          style: TextStyle(
              fontFamily: Typo.medium, fontSize: 18, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              gridView = !gridView;
              setState(() {});
            },
            icon: SvgPicture.asset(
                gridView ? Asseturl.igFiltericon : Asseturl.igFiltericon2),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  fillColor: Appcolor.textfieldColor,
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search here...",
                  hintStyle: TextStyle(
                      fontFamily: Typo.medium,
                      fontSize: 12.sp,
                      color: Appcolor.greytextColor)),
            ),
            Expanded(
              child: gridView
                  ? GridView(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 249,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          crossAxisCount: 2),
                      children: List.generate(
                        5,
                        (index) => servicegrid(),
                      ))
                  : ListView(
                      shrinkWrap: true,
                      children: List.generate(
                        6,
                        (index) => serviceList(),
                      )),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
