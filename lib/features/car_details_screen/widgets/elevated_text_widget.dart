import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ElevatedTextWidget extends StatelessWidget {
  const ElevatedTextWidget(
      {super.key, this.color, this.textColor, required this.text, this.image});

  final Color? color;
  final Color? textColor;
  final String text;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0.h),
      child: Container(
        height: 40.h,
        width: 1.sw,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r), color: color),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 18.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                image!,
                height: 24.h,
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
              SizedBox(
                width: 0.08.sw,
              ),
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
