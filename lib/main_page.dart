import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './reusable_widget.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var activeCardColor = Color(0xFF26294D);
  var inActiveColor = Color(0xFF155328);
  final bottomactiveColor = Color(0xFFE5005D);
  var maleCardActiveColor = activeCardColor;
  final maleCardInActiveColor = inActiveCardColor;
  // static var activeCardColor;
  // static var inActiveCardColor;

  void updateColor(int Gender) {
    if (Gender == 1) {
      if (maleCardInActiveColor == inActiveCardColor) {
        maleCardActiveColor = activeCardColor;
      } else
        maleCardActiveColor = inActiveCardColor;
    }
  }

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
                        colors: maleCardInActiveColor,
                        iconContent: iconcontents(
                            icon: FontAwesomeIcons.venus, label: 'Male'),
                      ),
                    ),
                  ),
                  Expanded(
                      child: container(
                    colors: Color(0xFF26294D),
                    iconContent: iconcontents(
                        icon: FontAwesomeIcons.female, label: 'Female'),
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
                    child: container(
                      colors: Color(0xFF26294D),
                    ),
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
                    child: container(
                      colors: Color(0xFF26294D),
                    ),
                  ),
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
