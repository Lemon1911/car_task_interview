import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:interview_cars_app_task_ui_design/core/colors.dart';
import 'package:interview_cars_app_task_ui_design/features/car_screen/custom_widgets/car_card_widget.dart';

import '../custom_widgets/StoryDefault.dart';
import '../custom_widgets/app_text_form_field.dart';
import '../custom_widgets/category_widget.dart';

class CarScreen extends StatelessWidget {
  const CarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40.h,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [ColorsManager.grayBlack, ColorsManager.grayLight],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.h),
            child: SvgPicture.asset(
              "assets/svg/Home - menu.svg",
              height: 19.h,
            ),
          ),
        ],
        elevation: 0,
        title: GestureDetector(
          onTap: () {},
          child: SvgPicture.asset(
            "assets/svg/Home-Notification.svg",
            height: 20.h,
          ),
        ),
      ),
      body: Column(
        children: [
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            reverse: true,
            child: Row(
              children: [
                StoryDefault(
                  carName: "جليى ",
                  carImage: "assets/images/Car6.png",
                ),
                StoryDefault(
                  carName: "جليى ",
                  carImage: "assets/images/Image 11.png",
                ),
                StoryDefault(
                  carName: "جليى ",
                  carImage: "assets/images/Car6.png",
                ),
                StoryDefault(
                  carName: "جليى ",
                  carImage: "assets/images/Image 11.png",
                ),
                StoryDefault(
                  carName: "جليى ",
                  carImage: "assets/images/Image 1.png",
                ),
                StoryDefault(
                  carName: "جليى ",
                  carImage: "assets/images/Car6.png",
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 0.20.sh,
                    width: 1.sw,
                    child: Image.asset(
                      "assets/images/car_main.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0.h),
                    child: Form(
                      child: AppTextFormField(
                        hintText: "ابحث عن سيارتك",
                        hintStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        suffixIcon: SvgPicture.asset(
                          "assets/svg/Home - Search.svg",
                        ),
                      ),
                    ),
                  ),
                  const Row(
                    textDirection: TextDirection.rtl,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CategoryWidget(
                        categoryItem: "اسيوى",
                      ),
                      CategoryWidget(
                        categoryItem: "اوروبى",
                      ),
                      CategoryWidget(
                        categoryItem: "امريكى",
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(2.w),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 6,
                      // Number of items in the grid
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // Number of columns
                        childAspectRatio: 1, // Aspect ratio of each item
                      ),
                      itemBuilder: (context, index) {
                        return const CarCardWidget();
                      },
                    ),
                  ),
                  SizedBox(
                    height: 0.4.h,
                  ),
                  SizedBox(
                    height: 0.15.sh,
                    width: 1.sw,
                    child: Image.asset(
                      "assets/images/Image 5.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
