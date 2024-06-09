import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/core/theming/colors.dart';
import 'package:doc_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorsSpecialityListView extends StatelessWidget {
  const DoctorsSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsetsDirectional.only(
            start: index == 0 ? 0 : 24.w,
          ),
          child: Column(
            children: [
              CircleAvatar(
                radius: 28,
                backgroundColor: ColorsManager.lightBlue,
                child: SvgPicture.asset(
                  "assets/svgs/general_speciality.svg",
                  width: 40.w,
                  height: 40.h,
                ),
              ),
              verticalSpace(8),
              Text(
                "Specialization",
                style: TextStyles.font12darkBlueRegular,
              ),
            ],
          ),
        ),
        itemCount: 8,
      ),
    );
  }
}
