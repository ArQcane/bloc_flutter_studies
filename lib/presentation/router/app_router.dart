import 'package:bloc_flutter_studies/business_logic/cubits/count_cubit.dart';
import 'package:bloc_flutter_studies/presentation/screens/home_screen.dart';
import 'package:bloc_flutter_studies/presentation/screens/second_screen.dart';
import 'package:bloc_flutter_studies/presentation/screens/third_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? onGenRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => HomeScreen(title: 'Home Screen', color: Colors.blue,));
        break;
      case '/second':
        return MaterialPageRoute(
            builder: (_) => SecondScreen(title: 'Second Screen'));
        break;
      case '/third':
        return MaterialPageRoute(
            builder: (_) => ThirdScreen(title: 'Third Screen'));
        break;
      default:
        return null;
    }
  }
}
