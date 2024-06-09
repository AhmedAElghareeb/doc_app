import 'package:doc_app/features/home/data/models/specializations_response_model.dart';
import 'package:doc_app/features/home/widgets/doctors_list_view_item.dart';
import 'package:flutter/material.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key, this.doctorsList});
  final List<Doctors?>? doctorsList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList?.length,
        itemBuilder: (context, index) => DoctorsListViewItem(
          doctorsModel: doctorsList?[index],
        ),
      ),
    );
  }
}
