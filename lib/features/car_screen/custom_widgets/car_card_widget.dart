import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_cars_app_task_ui_design/core/colors.dart';

import '../../car_details_screen/screens/car_details_screen.dart';
import 'car_card_info_widget.dart';

class CarCardWidget extends StatelessWidget {
  const CarCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CarDetailsScreen()),
      ),
      child: Container(
        child: Padding(
          padding: EdgeInsets.only(bottom: 40.h),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                height: 0.8.sh,
                width: double.infinity,
                child: Image.asset(
                  "assets/images/Image 1.png",
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: 1.sw,
                height: 0.025.sh,
                color: ColorsManager.mainWhite.withOpacity(0.6),
                child: const Text(
                  "جى ام سى / الفقئة / الرابعة",
                  textAlign: TextAlign.center,
                ),
              ),
              Positioned(
                bottom: -0.05.sh,
                // Adjust this value to position the row half inside and half outside
                right: 0,
                left: 0,
                child: const Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CarCardInfoWidget(),
                    CarCardInfoWidget(),
                    CarCardInfoWidget(),
                    CarCardInfoWidget(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
