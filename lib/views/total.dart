import 'package:blocestudo/bloc/counter_book.dart';
import 'package:blocestudo/bloc/counter_pen.dart';
import 'package:blocestudo/views/components/rounded_button_back.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TotalView extends StatelessWidget {
  const TotalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Total itens",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.purple.shade100,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                (context.read<CounterBook>().state +
                        context.read<CounterPen>().state)
                    .toString(),
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.redAccent,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RoundedButtonBack(),
            ],
          ),
        ),
      ),
    );
  }
}
