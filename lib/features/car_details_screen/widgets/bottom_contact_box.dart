import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BottomContactBox extends StatelessWidget {
  const BottomContactBox(
      {super.key,
      required this.categoryItem,
      required this.image,
      required this.backgroundColor,
      required this.textColor,
      required this.iconColor});

  final String categoryItem;
  final String image;
  final Color backgroundColor;
  final Color textColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 16.w),
      child: Container(
        alignment: Alignment.center,
        height: 0.045.sh,
        width: 0.3.sw,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            40.r,
          ),
          color: backgroundColor,
          border: Border.all(
            color: Colors.grey, // set the border color
            width: 1.0.w, // set the border width
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              image,
              height: 18.h,
              colorFilter: ColorFilter.mode(
                iconColor,
                BlendMode.srcIn,
              ),
            ),
            Text(
              categoryItem,
              style: TextStyle(
                fontSize: 14.sp,
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
