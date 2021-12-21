import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatelessWidget {
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
                    child: container(
                      colors: Color(0xFF4C5065),
                      iconContent: iconcontents(
                          icon: FontAwesomeIcons.venus, label: 'Male'),
                    ),
                  ),
                  Expanded(
                      child: container(
                    colors: Color(0xFF4C5065),
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
                      colors: Color(0xFF4C5065),
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
                      colors: Color(0xFF4C5065),
                    ),
                  ),
                  Expanded(child: container(colors: Color(0xFF4C5065)))
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

class iconcontents extends StatelessWidget {
  final IconData icon;
  final String label;

  iconcontents({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 70,
        ),
        SizedBox(height: 8,),
        Text(
          '$label',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold ,color: Color(0xFFFFFFFF)),
        )
      ],
    );
  }
}

class container extends StatelessWidget {
  final Color colors;
  // final Icon iconContent;
  final Widget? iconContent;
  container({required this.colors, this.iconContent});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: colors),
      child: iconContent,
    );
  }
}
