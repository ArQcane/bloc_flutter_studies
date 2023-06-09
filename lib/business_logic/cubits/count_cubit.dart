import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_flutter_studies/business_logic/cubits/internet_cubit.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'count_state.dart';

class CountCubit extends Cubit<CountState> {
  CountCubit() : super(CountState(counterValue: 0));

  void increment() => emit(
      CountState(counterValue: state.counterValue + 1, wasIncremented: true));

  void decrement() => emit(CountState(
      counterValue: state.counterValue - 1, wasIncremented: false));
}
