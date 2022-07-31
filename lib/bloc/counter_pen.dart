import 'package:blocestudo/bloc/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPen extends Bloc<CounterEvent, int> {
  CounterPen() : super(0) {
    on<increment>((event, emit) => emit(state + 1));
    on<decrement>((event, emit) => emit(state - 1));
  }
}
