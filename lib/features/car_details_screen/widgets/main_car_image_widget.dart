import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interview_cars_app_task_ui_design/features/car_details_screen/widgets/circular_icon_widget.dart';

import 'main_car_image_info_widget.dart';

class MainCarImageWidget extends StatelessWidget {
  const MainCarImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.only(bottom: 80.h),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              height: 0.4.sh,
              width: 1.sh,
              child: Image.asset(
                "assets/images/Image 1.png",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: 1.sw,
              height: 0.08.sh,
              child: Row(
                children: [
                  CircularIconWidget(
                    image: SvgPicture.asset(
                      "assets/svg/Back.svg",
                      height: 19.h,
                    ),
                    onPressed: () {},
                  ),
                  Spacer(),
                  CircularIconWidget(
                    image: SvgPicture.asset(
                      "assets/svg/Car Page - Share.svg",
                      height: 19.h,
                    ),
                    onPressed: () {},
                  ),
                  CircularIconWidget(
                    image: SvgPicture.asset(
                      "assets/svg/Menu - Fav.svg",
                      height: 19.h,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: -0.08.sh,
              // Adjust this value to position the row half inside and half outside
              right: 0,
              left: 0,
              child: Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MainCarImageInfoWidget(),
                  MainCarImageInfoWidget(),
                  MainCarImageInfoWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
