import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:interview_cars_app_task_ui_design/core/colors.dart';

import '../custom_widgets/StoryDefault.dart';

class CarScreen extends StatelessWidget {
  const CarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [ColorsManager.grayBlack, ColorsManager.grayLight],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.h),
            child: SvgPicture.asset(
              "assets/svg/Home-Notification.svg",
              height: 20.h,
            ),
          ),
        ],
        elevation: 0,
        title: SvgPicture.asset(
          "assets/svg/Home-Notification.svg",
          height: 20.h,
        ),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            reverse: true,
            child: Row(
              children: [
                StoryDefault(
                  carName: "جليى ",
                  carImage: "assets/images/Image 6.png",
                ),
                StoryDefault(
                  carName: "جليى ",
                  carImage: "assets/images/Image 11.png",
                ),
                StoryDefault(
                  carName: "جليى ",
                  carImage: "assets/images/Image 6.png",
                ),
                StoryDefault(
                  carName: "جليى ",
                  carImage: "assets/images/Image 11.png",
                ),
                StoryDefault(
                  carName: "جليى ",
                  carImage: "assets/images/Image 1.png",
                ),
                StoryDefault(
                  carName: "جليى ",
                  carImage: "assets/images/Image 6.png",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
