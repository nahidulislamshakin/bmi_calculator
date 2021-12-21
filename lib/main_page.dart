import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF04040C),
      ),
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
                    child: container(),
                  ),
                  Expanded(child: container())
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: container(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: container(),
                  ),
                  Expanded(child: container())
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

class container extends StatelessWidget {
  const container({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xFF6F7693)),
    );
  }
}
