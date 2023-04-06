import 'dart:developer';
import 'dart:developer';
import 'dart:ffi';

import 'package:bloc_flutter_studies/business_logic/cubits/count_cubit.dart';
import 'package:bloc_flutter_studies/presentation/router/app_router.dart';
import 'package:bloc_flutter_studies/presentation/screens/home_screen.dart';
import 'package:bloc_flutter_studies/presentation/screens/second_screen.dart';
import 'package:bloc_flutter_studies/presentation/screens/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final CountCubit _countCubit = CountCubit();

  final AppRouter _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: _appRouter.onGenRoute,
    );

  }

  @override
  void dispose() {
    _appRouter.dispose();
    super.dispose();
  }
}
