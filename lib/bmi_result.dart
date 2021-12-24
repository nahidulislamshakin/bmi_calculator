import 'package:flutter/material.dart';
import './main_page.dart';

class BMIresult extends StatelessWidget {
  double age;
  double weight;
  double height;

  BMIresult({required this.age, required this.height, required this.weight});

  double result = 0;

  String? status;

  double showBMI() {
    //height = height / 100;
    result = weight / (height * height);
    return result;
  }

  String? showStatus(double result) {
    if (result < 18.5) {
      status = 'Under Weight';
      return status;
    } else if (result > 18.5 && result < 25) {
      status = 'Healthy';
      return status;
    } else if (result > 25 && result < 29.9) {
      status = 'Overweight';
      return status;
    } else {
      status = 'Obese';
      return status;
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // backgroundColor: const Color(0xFF0F1335),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //  crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${showStatus(showBMI())}',
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.green),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  '${showBMI().round()}',
                  style: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Normal BMI range:',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '18.5 - 25 kg/m2',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'You are ${showStatus(showBMI())}',
                  style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Recalculate',
                      style: TextStyle(fontSize: 25, color: Colors.blue),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
