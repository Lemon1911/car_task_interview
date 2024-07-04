import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interview_cars_app_task_ui_design/core/colors.dart';

class CarCardInfoWidget extends StatelessWidget {
  const CarCardInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.07.sh,
      width: 0.11.sw,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          5.r,
        ),
        color: ColorsManager.secondWhite,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(
            "assets/svg/Car Page - Slindr.svg",
            height: 20.h,
          ),
          Text("السعر"),
          Text(
            "12,700",
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
