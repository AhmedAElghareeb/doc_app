import 'package:doc_app/core/di/depen_inject.dart';
import 'package:doc_app/core/routing/app_router.dart';
import 'package:doc_app/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}
