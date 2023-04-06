import 'dart:developer';
import 'dart:developer';
import 'dart:ffi';

import 'package:bloc_flutter_studies/business_logic/cubits/count_cubit.dart';
import 'package:bloc_flutter_studies/business_logic/cubits/internet_cubit.dart';
import 'package:bloc_flutter_studies/presentation/router/app_router.dart';
import 'package:bloc_flutter_studies/presentation/screens/home_screen.dart';
import 'package:bloc_flutter_studies/presentation/screens/second_screen.dart';
import 'package:bloc_flutter_studies/presentation/screens/third_screen.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp(
    appRouter: AppRouter(),
    connectivity: Connectivity(),
  ));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  final Connectivity connectivity;

  const MyApp({
    required this.appRouter,
    required this.connectivity,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<InternetCubit>(
          create: (context) => InternetCubit(connectivity: connectivity),
        ),
        BlocProvider<CountCubit>(
          create: (context) => CountCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        onGenerateRoute: appRouter.onGenRoute,
      ),
    );
  }
}