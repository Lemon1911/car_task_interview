import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interview_cars_app_task_ui_design/core/colors.dart';

class MainCarImageInfoWidget extends StatelessWidget {
  const MainCarImageInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.1.sh,
      width: 0.25.sw,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10.r,
        ),
        color: ColorsManager.secondWhite,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            "assets/svg/Car Page - Slindr.svg",
            height: 20.h,
          ),
          Text(
            "السعر",
            style: TextStyle(color: ColorsManager.grayLight, fontSize: 16.sp),
          ),
          Text(
            "12,700",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
