import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/features/home/logic/home_cubit.dart';
import 'package:doc_app/features/home/logic/home_state.dart';
import 'package:doc_app/features/home/widgets/doctor_speciality_list_view.dart';
import 'package:doc_app/features/home/widgets/doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationsAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationsAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: () {
            return setupLoading();
          },
          specializationsSuccess: (specializationsResponseModel) {
            var list = specializationsResponseModel.specializationDataList;
            return setupSuccess(list);
          },
          specializationsError: (errorHandler) => setUpError(),
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
  Widget setupLoading() {
    return const SizedBox(
      height: 100,
      child: Center(child: CircularProgressIndicator()),
    );
  }
  Widget setupSuccess(list) {
    return Expanded(
      child: Column(
        children: [
          DoctorsSpecialityListView(
            specializationDataList: list ?? [],
          ),
          verticalSpace(8),
          DoctorsListView(
            doctorsList: list?[0]?.doctorsList,
          ),
        ],
      ),
    );
  }

  Widget setUpError() {
    return const SizedBox.shrink();
  }
}
