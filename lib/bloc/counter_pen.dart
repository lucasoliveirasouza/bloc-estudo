import 'package:blocestudo/bloc/counter_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class CounterPen extends Bloc<CounterEvent, int> {
  CounterPen() : super(0) {
    on<increment>((event, emit) => emit(state + 1));
    on<decrement>((event, emit) {
      if (state <= 0) {
        Get.snackbar(
          "Buying Pens",
          "Can not be less than zero",
          icon: Icon(Icons.alarm),
          barBlur: 20,
          backgroundColor: Colors.redAccent.shade200,
          isDismissible: true,
          duration: Duration(
            seconds: 3,
          ),
        );
      } else {
        return emit(state - 1);
      }
    });
  }
}
