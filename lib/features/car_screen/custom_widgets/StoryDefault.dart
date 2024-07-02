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
      padding: EdgeInsets.fromLTRB(10.w, 5.h, 10.w, 5.h),
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
          ),
        ],
      ),
    );
  }
}
