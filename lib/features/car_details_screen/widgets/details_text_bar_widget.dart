import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:interview_cars_app_task_ui_design/core/colors.dart';

class DetailsTextBarWidget extends StatelessWidget {
  const DetailsTextBarWidget({
    super.key,
    required this.imageIcon,
    required this.textDescription,
    required this.textInfo,
  });

  final String imageIcon;
  final String textDescription;
  final String textInfo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.w),
      child: Container(
        height: 35.h,
        width: 1.sw,
        color: ColorsManager.secondWhite,
        child: Padding(
          padding: EdgeInsets.all(8.0.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                imageIcon,
                height: 19.h,
                colorFilter: const ColorFilter.mode(
                  Colors.black,
                  BlendMode.srcIn,
                ),
              ),
              Text(
                "   $textDescription",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(left: 0.25.sw),
                child: Text(
                  textInfo,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
