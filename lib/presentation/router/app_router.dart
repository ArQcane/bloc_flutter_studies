import 'package:bloc_flutter_studies/business_logic/cubits/count_cubit.dart';
import 'package:bloc_flutter_studies/presentation/screens/home_screen.dart';
import 'package:bloc_flutter_studies/presentation/screens/second_screen.dart';
import 'package:bloc_flutter_studies/presentation/screens/third_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  final CountCubit _countCubit = CountCubit();

  Route? onGenRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (ctx) => _countCubit,
                child: HomeScreen(title: 'Home Screen')));
        break;
      case '/second':
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (ctx) => _countCubit,
                child: SecondScreen(title: 'Second Screen')));
        break;
      case '/third':
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (ctx) => _countCubit,
                child: ThirdScreen(title: 'Third Screen')));
        break;
      default:
        return null;
    }
  }
  void dispose(){
    _countCubit.close();
  }
}
