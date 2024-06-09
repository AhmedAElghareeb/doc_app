import 'package:doc_app/features/home/data/models/specializations_response_model.dart';
import 'package:doc_app/features/home/widgets/doctor_speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsSpecialityListView extends StatelessWidget {
  const DoctorsSpecialityListView(
      {super.key, required this.specializationDataList});

  final List<SpecializationsData?> specializationDataList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => DoctorSpecialityListViewItem(
          itemIndex: index,
          specializationsData: specializationDataList[index],
        ),
        itemCount: specializationDataList.length,
      ),
    );
  }
}
