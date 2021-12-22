import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './reusable_widget.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double _heightvalue = 170;
  double _weightvalue = 50;
  double _agevalue = 0;

  var activeCardColor = Color(0xFF155328);
  var inActiveCardColor = Color(0xFF272B4E);

  var maleCardColor = Color(0xFF272B4E);

  var femaleCardColor = Color(0xFF272B4E);

  void updateColor(int Gender) {
    if (Gender == 1) {
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
      } else if (femaleCardColor == activeCardColor)
        femaleCardColor = inActiveCardColor;
    }
  }

  void updateColor2(int Gender) {}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF04040C),
          scaffoldBackgroundColor: Color(0xFF0F1335)),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("BMI Calculator"),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
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
            SizedBox(
              height: 6,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF272B4E)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'HEIGHT',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('${_heightvalue.round().toString()}',
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                                Text(
                                  'cm',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Slider(
                              value: _heightvalue,
                              max: 300,
                              //   divisions: 5,
                              // label: _value.round().toString(),
                              onChanged: (double value) {
                                setState(() {
                                  _heightvalue = value;
                                });
                              },
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF26294D)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
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
                              '${_weightvalue.round().toString()}',
                              style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                                                    Text('kg',style: TextStyle(
                                      fontSize: 15, color: Colors.grey),),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  
                                  _weightvalue--;
                                });
                              },
                              child: Icon(Icons.remove),
                              backgroundColor: Colors.white,
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  _weightvalue++;
                                });
                              },
                              child: Icon(Icons.add),
                              backgroundColor: Colors.white,
                            )
                          ],
                        )
                      ],
                    ),
                  )),
                  Expanded(child: container(colors: Color(0xFF26294D)))
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              color: Color(0xFFFD0225),
            )
          ],
        ),
      ),
    );
  }
}
