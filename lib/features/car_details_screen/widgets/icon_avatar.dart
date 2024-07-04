import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/colors.dart';
import '../../car_screen/custom_widgets/notification_widget.dart';

class IconAvatar extends StatelessWidget {
  const IconAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0.h),
      child: Container(
        height: 40.h,
        width: 1.sw,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            color: ColorsManager.secondWhite),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 18.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const NotificationWidget(
                radiusOut: 15,
                radiusIn: 9,
                text: "",
              ),
              SizedBox(
                width: 0.08.sw,
              ),
              Text(
                "يوكن للسيارات المعتمدة",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp),
              ),
              const Spacer(),
              Text(
                "كل السيارات",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
