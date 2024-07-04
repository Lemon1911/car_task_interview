import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_cars_app_task_ui_design/core/colors.dart';

class CircularIconWidget extends StatelessWidget {
  final Widget? image;
  final Color backgroundColor;
  final VoidCallback onPressed;

  const CircularIconWidget({
    Key? key,
    this.backgroundColor = ColorsManager.grayMid,
    required this.onPressed,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.all(8.0.h),
        child: Container(
          width: 40.0.w,
          height: 40.0.h,
          decoration: BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: image,
          ),
        ),
      ),
    );
  }
}
