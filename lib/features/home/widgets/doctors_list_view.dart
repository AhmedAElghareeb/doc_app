import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsetsDirectional.only(bottom: 16.h),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  "https://img.freepik.com/free-photo/doctor-putting-finger-his-cheek-white-coat-hat-looking-positive_176474-8550.jpg?t=st=1717934162~exp=1717937762~hmac=18230a0fd87b469adacb0f4a7cebf603a8f4667734226a7e4f68dfaaf25a9ea6&w=996",
                  fit: BoxFit.cover,
                  width: 110.w,
                  height: 120.h,
                ),
              ),
              horizontalSpace(16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      style: TextStyles.font16darkBlueBold,
                    ),
                    verticalSpace(5),
                    Text(
                      "General | RSUD Gatot Subroto",
                      style: TextStyles.font12GreyMedium,
                    ),
                    verticalSpace(5),
                    Text(
                      "Email",
                      style: TextStyles.font12GreyMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
