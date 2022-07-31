import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  String title;
  VoidCallback onTap;

  RoundedButton({
    Key? key,
    required this.title,
    required this.onTap,
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
        onPressed: () => onTap,
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
