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
    if (result < 18) {
      status = 'Under Weight';
      return status;
    } else if (result > 18 && result < 25) {
      status = 'Healthy';
      return status;
    } else if (result > 25 && result < 30) {
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
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //  crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
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
                    )),
                const SizedBox(
                  height: 100,
                ),
                Card(
                  color: Color(0xFF0F1335),
                  margin: EdgeInsets.all(5),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          'Developer :',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Nahidul Islam Shakin',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'shakinhabib2000@gmail.com',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
