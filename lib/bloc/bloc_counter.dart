import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterEvent {}

class increment extends CounterEvent {}

class decrement extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<increment>((event, emit) => emit(state + 1));
    on<decrement>((event, emit) => emit(state - 1));
  }
}
