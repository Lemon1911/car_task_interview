import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_cars_app_task_ui_design/core/colors.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 9.r,
          child: ClipOval(
            child: CircleAvatar(
              radius: 7.r,
              backgroundColor: ColorsManager.lightRed.withOpacity(0.8),
              child: Text(
                textAlign: TextAlign.center,
                "2",
                style: TextStyle(
                  fontSize: 10,
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
