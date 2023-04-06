part of 'count_cubit.dart';

class CountState extends Equatable {

  final int counterValue;
  bool wasIncremented;

  CountState({required this.counterValue, this.wasIncremented = false});

  @override
  List<Object> get props => [this.counterValue, this.wasIncremented];
}
