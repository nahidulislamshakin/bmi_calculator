import 'package:flutter/material.dart';
import './main_page.dart';

class BMIresult extends StatelessWidget {
  double age;
  double weight;
  double height;

  BMIresult({required this.age, required this.height, required this.weight});
  double result = 0;
  double showBMI() {
    height = height / 100;
    result = weight / (height * height);
    return result;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
     // backgroundColor: const Color(0xFF0F1335),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Text(
            '${showBMI().round()}',
            //    'bmi',
            style: const TextStyle(
                fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
          ))
        ],
      ),
    );
  }
}
