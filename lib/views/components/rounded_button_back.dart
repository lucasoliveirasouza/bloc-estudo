import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoundedButtonBack extends StatelessWidget {
  RoundedButtonBack({
    Key? key,
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
        onPressed: () => Get.back(),
        child: Text(
          "Go back",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
