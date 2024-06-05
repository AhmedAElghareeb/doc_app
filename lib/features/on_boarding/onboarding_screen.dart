import 'package:doc_app/core/theming/styles.dart';
import 'package:doc_app/features/on_boarding/widgets/doc_logo_and_name.dart';
import 'package:doc_app/features/on_boarding/widgets/doctor_image_and_text.dart';
import 'package:doc_app/features/on_boarding/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsDirectional.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                const DocLogoAndName(),
                SizedBox(
                  height: 30.h,
                ),
                const DoctorImageAndText(),
                Padding(
                  padding: EdgeInsetsDirectional.symmetric(
                    horizontal: 30.w,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                        textAlign: TextAlign.center,
                        style: TextStyles.font13greyRegular,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      const GetStartedButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
