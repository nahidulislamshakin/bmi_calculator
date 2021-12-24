import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './reusable_widget.dart';
import './bmi_result.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double heightvalue = 170;
  double weightvalue = 50;
  double agevalue = 20;

  var activeCardColor = Color(0xFF155328);
  var inActiveCardColor = Color(0xFF272B4E);

  var maleCardColor = Color(0xFF272B4E);

  var femaleCardColor = Color(0xFF272B4E);

  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inActiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inActiveCardColor;
      } else if (maleCardColor == activeCardColor) {
        maleCardColor = inActiveCardColor;
      }
    } else {
      if (femaleCardColor == inActiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inActiveCardColor;
      } else if (femaleCardColor == activeCardColor) {
        femaleCardColor = inActiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: const Color(0xFF04040C),
          scaffoldBackgroundColor: const Color(0xFF0F1335)),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("BMI Calculator"),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  //Gender decider
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(1);
                        });
                      },
                      child: container(
                        colors: maleCardColor,
                        iconContent: iconcontents(
                            icon: FontAwesomeIcons.venus, label: 'Male'),
                      ),
                    ),
                  ),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: container(
                      colors: femaleCardColor,
                      iconContent: iconcontents(
                          icon: FontAwesomeIcons.female, label: 'Female'),
                    ),
                  ))
                ],
              ),
            ),

            const SizedBox(
              height: 6,
            ),

            //Height Container
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: container(
                      colors: const Color(0xFF272B4E),
                      iconContent: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'HEIGHT',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('${heightvalue.round()}',
                                  style: const TextStyle(
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              const Text(
                                'cm',
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          // SliderTheme(
                          //   data: ThemeData().of().copyWith(
                          //       RoundSliderThumbShape(enabledThumbRadius: 15,)
                          //       Overlay(
                          //       Color(0x292724AE)),
                          //       RoundSliderOverlayShape(overlayRadius: 24.0)),
                          //   child:
                          Slider(
                            value: heightvalue,
                            max: 300,
                            activeColor: const Color(0xFFFD0225),
                            inactiveColor: Colors.red.shade300,
                            onChanged: (double value) {
                              setState(() {
                                if (value > 0) {
                                  heightvalue = value;
                                } else {
                                  heightvalue = value + 1;
                                }
                              });
                            },
                          ),
                          //   ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 6,
            ),

            //Weight container
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: container(
                      colors: const Color(0xFF26294D),
                      iconContent: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'WEIGHT',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          // SizedBox(
                          //   height: 5,
                          // ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${weightvalue.round()}',
                                style: const TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              const Text(
                                'kg',
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    if (weightvalue > 1) {
                                      weightvalue--;
                                    }
                                  });
                                },
                                child: const Icon(Icons.remove),
                                backgroundColor: Colors.white,
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    //   if(weightvalue>0){
                                    weightvalue++;
                                    //  }
                                  });
                                },
                                child: const Icon(Icons.add),
                                backgroundColor: Colors.white,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                  //age container
                  Expanded(
                    child: container(
                      colors: Color(0xFF26294D),
                      iconContent: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'AGE',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          // SizedBox(
                          //   height: 5,
                          // ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${agevalue.round()}',
                                style: const TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              const Text(
                                'Years',
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    if (agevalue > 1) {
                                      agevalue--;
                                    }
                                  });
                                },
                                child: const Icon(Icons.remove),
                                backgroundColor: Colors.white,
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    //   if(agevalue>0){
                                    agevalue++;
                                    // }
                                  });
                                },
                                child: const Icon(Icons.add),
                                backgroundColor: Colors.white,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            //bmi calculator button
            goresult(
              agevalue: agevalue,
              weightvalue: weightvalue,
              heightvalue: heightvalue,
            ),
          ],
        ),
      ),
    );
  }
}

class goresult extends StatelessWidget {
  double agevalue;
  double weightvalue;
  double heightvalue;
  goresult(
      {required this.agevalue,
      required this.weightvalue,
      required this.heightvalue});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      color: Color(0xFFFD0225),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BMIresult(
                    age: agevalue,
                    weight: weightvalue,
                    height: heightvalue,
                  )),
        );
      },
      child: const Center(
          child: Text(
        'Calculate BMI',
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
      )),
    );
  }
}
