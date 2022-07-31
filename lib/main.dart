import 'package:blocestudo/bloc/counter_book.dart';
import 'package:blocestudo/views/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_pen.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<CounterBook>(
        create: (BuildContext context) => CounterBook(),
      ),
      BlocProvider<CounterPen>(
        create: (BuildContext context) => CounterPen(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterView(),
    );
  }
}
