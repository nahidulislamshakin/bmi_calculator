import 'package:flutter/material.dart';

class FeetToCm extends StatefulWidget {
  @override
  State<FeetToCm> createState() => _FeetToCmState();
}

class _FeetToCmState extends State<FeetToCm> {
  final feetController = TextEditingController();
  final inchController = TextEditingController();
  double feetTocm = 0;
  double inchTocm = 0;
  double cm = 0;

  //final Function cm;

  void submitData() {
    final feet = double.parse(feetController.text);
     final inch = double.parse(inchController.text);
    feetTocm = feet * 30.48;
    inchTocm = inch * 2.54;
    setState(() {
      cm = feetTocm + inchTocm;
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: SizedBox(
            width: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Feet',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: 170,
                            height: 50,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Height in feet",
                                hintText: "0",
                              ),
                              controller: feetController,
                              onFieldSubmitted: (_) => submitData,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          const Text(
                            'Inch',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: 170,
                            height: 50,
                            child: TextField(
                              decoration: const  InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Height in inch",
                                hintText: "0",
                              ),
                              controller: inchController,
                              onSubmitted: (_) => submitData,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                 const  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                      width: 350,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              submitData();
                            },
                            child: const Text(
                              'Convert',
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ],
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    '${cm.round()} cm',
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'BMI Calculator',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ))
                ]),
          ),
        ),
      ),
    );
  }
}
