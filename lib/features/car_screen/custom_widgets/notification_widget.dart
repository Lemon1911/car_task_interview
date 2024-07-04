import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_cars_app_task_ui_design/core/colors.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget(
      {super.key,
      required this.text,
      required this.radiusOut,
      required this.radiusIn});

  final String text;
  final int radiusOut;
  final int radiusIn;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: radiusOut.r,
          child: ClipOval(
            child: CircleAvatar(
              radius: radiusIn.r,
              backgroundColor: ColorsManager.lightRed.withOpacity(0.8),
              child: Text(
                textAlign: TextAlign.center,
                text,
                style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
