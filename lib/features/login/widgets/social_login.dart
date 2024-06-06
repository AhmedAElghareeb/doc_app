import 'package:doc_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialMediaLogin extends StatefulWidget {
  const SocialMediaLogin({super.key});

  @override
  State<SocialMediaLogin> createState() => _SocialMediaLoginState();
}

class _SocialMediaLoginState extends State<SocialMediaLogin> {

  List<String> paths = [
    "gmail.svg",
    "facebook.svg",
    "apple.svg",
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          paths.length,
              (index) => Padding(
            padding: EdgeInsetsDirectional.symmetric(
                horizontal: 25.w,
            ),
            child: CircleAvatar(
              radius: 23.r,
              backgroundColor: ColorsManager.socialBgColorAvatar,
              child: SvgPicture.asset(
                "assets/svgs/${paths[index]}",
                width: 24.w,
                height: 24.h,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ),
      ],
    );
  }
}