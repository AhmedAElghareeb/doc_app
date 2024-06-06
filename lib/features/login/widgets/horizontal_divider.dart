import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/core/theming/colors.dart';
import 'package:doc_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizontalDivider extends StatelessWidget {
  const HorizontalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        children: [
          Container(
            width: 119.w,
            height: 1,
            color: ColorsManager.dividerColorGrey,
          ),
          horizontalSpace(3),
          Text(
            "Or sign in with",
            style: TextStyles.font12greyRegular,
          ),
          horizontalSpace(3),
          Container(
            width: 119.w,
            height: 1,
            color: ColorsManager.dividerColorGrey,
          ),
        ],
      ),
    );
  }
}