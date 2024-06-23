import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/core/theming/colors.dart';
import 'package:doc_app/core/theming/styles.dart';
import 'package:doc_app/features/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpecialityListViewItem extends StatelessWidget {
  const SpecialityListViewItem(
      {super.key,
      this.specializationsData,
      required this.itemIndex,
      required this.selectedIndex});

  final SpecializationsData? specializationsData;
  final int itemIndex;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: itemIndex == 0 ? 0 : 24.w,
      ),
      child: Column(
        children: [
          itemIndex == selectedIndex
              ? Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorsManager.darkBlue,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: ColorsManager.lightBlue,
                    child: SvgPicture.asset(
                      "assets/svgs/general_speciality.svg",
                      width: 42.w,
                      height: 42.h,
                    ),
                  ),
                )
              : CircleAvatar(
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
            specializationsData?.name ?? "Specialization",
            style: itemIndex == selectedIndex
                ? TextStyles.font14darkBlueBold
                : TextStyles.font12darkBlueRegular,
          ),
        ],
      ),
    );
  }
}
