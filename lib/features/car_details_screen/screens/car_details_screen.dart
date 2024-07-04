import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_cars_app_task_ui_design/features/car_details_screen/widgets/bottom_contact_row.dart';
import 'package:interview_cars_app_task_ui_design/features/car_details_screen/widgets/details_text_bar_widget.dart';
import 'package:interview_cars_app_task_ui_design/features/car_details_screen/widgets/elevated_text_widget.dart';
import 'package:interview_cars_app_task_ui_design/features/car_details_screen/widgets/main_car_image_widget.dart';

import '../../../core/colors.dart';
import '../../car_screen/custom_widgets/car_card_widget.dart';
import '../widgets/icon_avatar.dart';

class CarDetailsScreen extends StatelessWidget {
  const CarDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const MainCarImageWidget(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "يكون بحالة جيدة",
                      style: TextStyle(
                          fontSize: 22.sp, fontWeight: FontWeight.w500),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "8,700 ",
                            style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "د.ك",
                            style: TextStyle(
                              fontSize: 20.sp, // Different font size
                              fontWeight:
                                  FontWeight.normal, // Different font weight
                              color: ColorsManager
                                  .grayBlack, // Different color if needed
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const ElevatedTextWidget(
                  text: "مكفول حتى 70000  كم ",
                  image: "assets/svg/Car Page - Makfula.svg",
                  color: ColorsManager.pinkRed,
                  textColor: Colors.white,
                ),
                ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                    height: 2.h,
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => const DetailsTextBarWidget(
                    imageIcon: "assets/svg/Menu - Contact.svg",
                    textDescription: "اللون الخارجى",
                    textInfo: "ابيض",
                  ),
                  itemCount: 8,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "هذا نص عشوائي باللغة العربية. يمكن استخدامه لأغراض اختبارية في التطبيقات. يتميز النص العربي بجماله وتنوعه اللغوي والثقافي. من خلال استخدام النص العربي، يمكن للمطورين ضمان توافق التطبيقات مع اللغات المتنوعة وإثراء تجربة المستخدم.",
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const IconAvatar(),
                SizedBox(
                  height: 4.h,
                ),
                Padding(
                  padding: EdgeInsets.all(2.w),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    // Number of items in the grid
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 2.w,
                      mainAxisSpacing: 10.h, // Number of columns
                      childAspectRatio: 1, // Aspect ratio of each item
                    ),
                    itemBuilder: (context, index) {
                      return const CarCardWidget();
                    },
                  ),
                ),
                SizedBox(
                  height: 0.04.sh,
                ),
                const BottomContactRow(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
