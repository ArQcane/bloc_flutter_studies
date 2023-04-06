import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../lib/business_logic/cubits/count_cubit.dart';

void main() {
  group("CounterCubit", () {
    late CountCubit countCubit;
    setUp(() {
      countCubit = CountCubit();
    });
    tearDown(() {
      countCubit.close();
    });
    test(
        'the initial state for the CountCubit is CounterState(counterValue:0)', () {
      expect(countCubit.state, CountState(
          counterValue: 0)); //equatable allows for testing between class object instances
    });
    blocTest<CountCubit, CountState>(
      "the cubit should emit a COuntState(counterValue:1, wasIncremented = true) when cubit.increment() was called",
      build: () => countCubit,
      act: (cubit) => cubit.increment(),
      expect: () => [CountState(counterValue: 1, wasIncremented: true)]
    );

    blocTest<CountCubit, CountState>(
        "the cubit should emit a COuntState(counterValue:-1, wasIncremented = false) when cubit.decrement() was called",
        build: () => countCubit,
        act: (cubit) => cubit.decrement(),
        expect: () => [CountState(counterValue: -1, wasIncremented: false)]
    );
  });
}