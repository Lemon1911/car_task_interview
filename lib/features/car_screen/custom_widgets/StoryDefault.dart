import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_cars_app_task_ui_design/core/colors.dart';

class StoryDefault extends StatelessWidget {
  const StoryDefault(
      {super.key, required this.carName, required this.carImage});

  final String carName;
  final String carImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.h),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                backgroundColor: Colors.red,
                radius: 34.r,
                child: CircleAvatar(
                  radius: 33.r,
                  backgroundColor: Colors.white,
                  child: ClipOval(
                    child: CircleAvatar(
                      radius: 29.r,
                      backgroundColor: ColorsManager.grayLight,
                      child: Image.asset(
                        carImage,
                        fit: BoxFit.cover,
                        width: 60.r,
                        height: 60.r,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
          Text(
            carName,
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
