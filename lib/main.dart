import 'package:flutter/material.dart';
import 'content.dart';

void main() {
  runApp(BMIcalculator());
}
class BMIcalculator extends StatelessWidget {
  const BMIcalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0a0e21),
        scaffoldBackgroundColor: Color(0xff0a0e21),
        textTheme: TextTheme(bodyText1: TextStyle(color: Colors.white)),

      ),
      home: inputpage(),
    );
  }
}


