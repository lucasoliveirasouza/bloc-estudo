import 'package:blocestudo/bloc/counter_book.dart';
import 'package:blocestudo/bloc/counter_event.dart';
import 'package:blocestudo/bloc/counter_pen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
              ),
              color: Colors.purple.shade100,
            ),
            child: Center(
              child: Text(
                "Bloc Flutter",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        "Books",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.lime,
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.redAccent,
                        ),
                        child: IconButton(
                          onPressed: () {
                            context.read<CounterBook>().add(decrement());
                          },
                          icon: Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      BlocBuilder<CounterBook, int>(builder: (context, state) {
                        return Text(
                          "$state",
                          style: TextStyle(fontSize: 30),
                        );
                      }),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.redAccent,
                        ),
                        child: IconButton(
                          onPressed: () {
                            context.read<CounterBook>().add(increment());
                          },
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text(
                        "Pens",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.lime,
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.redAccent,
                        ),
                        child: IconButton(
                          onPressed: () {
                            context.read<CounterPen>().add(decrement());
                          },
                          icon: Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      BlocBuilder<CounterPen, int>(builder: (context, state) {
                        return Text(
                          "$state",
                          style: TextStyle(fontSize: 30),
                        );
                      }),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.redAccent,
                        ),
                        child: IconButton(
                          onPressed: () {
                            context.read<CounterPen>().add(increment());
                          },
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
