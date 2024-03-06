import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:moolwmsstore/View/common/customButton.dart';
import 'package:moolwmsstore/utils/dimensions.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Base extends StatefulWidget {
  const Base({super.key});

  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  int? selectedIndex;
  bool show = true;
  List data = [
    {
      "title": "Warehouse",
      "imagePath": "assets/icons/Dashboard Icon.png",
      "onTap": () {},
    },
    {
      "title": "Warehouse",
      "imagePath": "assets/icons/Dashboard Icon.png",
      "onTap": () {},
    },
    {
      "title": "Warehouse",
      "imagePath": "assets/icons/Dashboard Icon.png",
      "onTap": () {},
    },
    {
      "title": "Warehouse",
      "imagePath": "assets/icons/Dashboard Icon.png",
      "onTap": () {},
    },
    {
      "title": "Warehouse",
      "imagePath": "assets/icons/Dashboard Icon.png",
      "onTap": () {},
    },
    {
      "title": "Warehouse",
      "imagePath": "assets/icons/Dashboard Icon.png",
      "onTap": () {},
    },
    {
      "title": "Warehouse",
      "imagePath": "assets/icons/Dashboard Icon.png",
      "onTap": () {},
    },
    {
      "title": "Warehouse",
      "imagePath": "assets/icons/Dashboard Icon.png",
      "onTap": () {},
    },
    {
      "title": "Warehouse",
      "imagePath": "assets/icons/Dashboard Icon.png",
      "onTap": () {},
    },
    {
      "title": "Warehouse",
      "imagePath": "assets/icons/Dashboard Icon.png",
      "onTap": () {},
    },
    {
      "title": "Warehouse",
      "imagePath": "assets/icons/Dashboard Icon.png",
      "onTap": () {},
    },
    {
      "title": "Warehouse",
      "imagePath": "assets/icons/Dashboard Icon.png",
      "onTap": () {},
    },
    {
      "title": "Warehouse",
      "imagePath": "assets/icons/Dashboard Icon.png",
      "onTap": () {},
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Scaffold(
          backgroundColor: const Color(0xFFFFFFFF),
          // backgroundColor: AppColors.scaffoldBackgroundColor,
          drawer: Drawer(
            shape: const Border(),
            backgroundColor: AppColors.primaryColor,
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                const Gap(20),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Image.asset(
                    "assets/icons/ic_logo.png",
                    height: 10.h,
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: data.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, i) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = i;
                          });
                          data[i]["onTap"];
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5)
                              .copyWith(right: 0),
                          child: Row(
                            children: [
                              Container(
                                height: 5.h,
                                width: 18,
                                color: selectedIndex == i
                                    ? Colors.white
                                    : Colors.black,
                              ),
                              SizedBox(
                                width: 60,
                                child: Image.asset(
                                  data[i]["imagePath"],
                                  height: 30,
                                ),
                              ),
                              Text(
                                data[i]["title"],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: isMobile(context) ? 12.sp : 13.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
          appBar: AppBar(
            toolbarHeight: isMobile(context) ? null : 80,
            // foregroundColor: Colors.white,
            backgroundColor: Colors.white,
            title: Image.asset(
              "assets/icons/ic_logo.png",
              height: 29,
            ),
            elevation: 10,
            actions: [
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/icons/Messagesappbar.png",
                        height: 28,
                      ),
                      const Gap(4),
                      Image.asset(
                        "assets/icons/NotificationsAppBar.png",
                        height: 28,
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(12),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                ),
              )
            ],
          ),
          body:  Container(),
        ),
        if (show)
          Container(
            height: 100.h,
            width: 100.w,
            color: Colors.white.withOpacity(0.550000011920929),
          ),
        if (show)
          Scaffold(
            backgroundColor: Colors.transparent,
            //color: Colors.white.withOpacity(0.550000011920929),
            body: Center(
              child: Container(
                alignment: Alignment.center,
                height: isMobile(context) ? 60.h : 80.h,
                width: isMobile(context) ? 94.w : 80.w,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Image.asset(
                          "assets/icons/WareHouse Added Icon.png",
                          height: 100,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Congratulations on adding your warehouse! To maximize its potential, consider adding more details.',
                          textAlign: TextAlign.center,
                          style: TextStyles.bodylarge(context)
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      CustomButton(
                        onTap: () {
                         // context.pushRoute(const AddWarehouseRoute());
                          setState(() {
                            show = false;
                          });
                        },
                        width: 600,
                        title: "Add Warehouse Details",
                        glow: false,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
