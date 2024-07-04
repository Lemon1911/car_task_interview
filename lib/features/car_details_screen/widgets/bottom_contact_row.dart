import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:interview_cars_app_task_ui_design/core/colors.dart';
import 'package:interview_cars_app_task_ui_design/features/car_details_screen/widgets/bottom_contact_box.dart';
import 'package:interview_cars_app_task_ui_design/features/car_details_screen/widgets/circular_icon_widget.dart';

class BottomContactRow extends StatelessWidget {
  const BottomContactRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          CircularIconWidget(
            backgroundColor: ColorsManager.greenLight,
            onPressed: () {},
            image: SvgPicture.asset(
              "assets/svg/Car Page - Call.svg",
              height: 16.h,
            ),
          ),
          CircularIconWidget(
            backgroundColor: ColorsManager.blueLight,
            onPressed: () {},
            image: SvgPicture.asset(
              "assets/svg/Car Page - Chat by WHatsapp.svg",
              height: 16.h,
            ),
          ),
          const BottomContactBox(
            iconColor: Colors.white,
            textColor: Colors.white,
            categoryItem: "موقع السيارة",
            backgroundColor: ColorsManager.grayBlack,
            image: "assets/svg/Car Page - Location.svg",
          ),
          const BottomContactBox(
            iconColor: ColorsManager.grayBlack,
            textColor: ColorsManager.grayBlack,
            categoryItem: "احجز السيارة",
            backgroundColor: Colors.white,
            image: "assets/svg/Car Page - Book.svg",
          ),
        ],
      ),
    );
  }
}
