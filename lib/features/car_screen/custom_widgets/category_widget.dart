import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_cars_app_task_ui_design/core/colors.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.categoryItem});

  final String categoryItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.h),
      child: Container(
        alignment: Alignment.center,
        height: 0.037.sh,
        width: 0.27.sw,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              40.r,
            ),
            color: ColorsManager.darkerGray),
        child: Text(
          categoryItem,
          style: TextStyle(
            fontSize: 14.sp,
            color: ColorsManager.mainWhite,
            fontWeight: FontWeight.bold,
          ),
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
