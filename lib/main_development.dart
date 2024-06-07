import 'package:doc_app/core/di/depen_inject.dart';
import 'package:doc_app/core/routing/app_router.dart';
import 'package:doc_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupGetIt();
  //fixing text hiding bug of screenUtils in release mode
  await ScreenUtil.ensureScreenSize();
  // await checkIfLoggedInUser();
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}

// checkIfLoggedInUser() async {
//   String? userToken =
//   await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
//   if (!userToken.isNullOrEmpty()) {
//     isLoggedInUser = true;
//   } else {
//     isLoggedInUser = false;
//   }
// }
