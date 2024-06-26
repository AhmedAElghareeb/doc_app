import 'package:doc_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class DoctorSpecialitySeeAll extends StatelessWidget {
  const DoctorSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Doctors Speciality",
          style: TextStyles.font18darkBlueSemiBold,
        ),
        const Spacer(),
        Text(
          "See All",
          style: TextStyles.font12blueRegular,
        ),
      ],
    );
  }
}
