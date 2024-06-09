import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/features/home/widgets/doctor_speciality_list_view.dart';
import 'package:doc_app/features/home/widgets/doctor_speciality_see_all.dart';
import 'package:doc_app/features/home/widgets/doctors_blue_container.dart';
import 'package:doc_app/features/home/widgets/doctors_list_view.dart';
import 'package:doc_app/features/home/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsetsDirectional.fromSTEB(
            20,
            16,
            20,
            28,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpace(24),
              const DoctorSpecialitySeeAll(),
              verticalSpace(18),
              const DoctorsSpecialityListView(),
              verticalSpace(8),
              const DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
