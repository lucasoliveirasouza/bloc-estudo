import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterEvent {}

class increment extends CounterEvent {}

class decrement extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  int books = 0;

  CounterBloc() : super(0) {
    on<increment>((event, emit) => emit(books + 1));
    on<decrement>((event, emit) => emit(books - 1));
  }
}
