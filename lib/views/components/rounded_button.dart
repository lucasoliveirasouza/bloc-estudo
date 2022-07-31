import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  String title;
  VoidCallback onPressed;

  RoundedButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.blue.shade200,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          primary: Colors.blue.shade200,
        ),
        onPressed: () => onPressed,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
