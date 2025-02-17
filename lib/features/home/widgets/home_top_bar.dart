import 'package:doc_app/core/theming/colors.dart';
import 'package:doc_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, User 👋",
              style: TextStyles.font18darkBlueBold,
            ),
            Text(
              "How Are you Today?",
              style: TextStyles.font12greyRegular,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: ColorsManager.bgColorAvatar,
          child: SvgPicture.asset("assets/svgs/notifications.svg"),
        ),
      ],
    );
  }
}
