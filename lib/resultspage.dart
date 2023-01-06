import 'package:bmical/content.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable.dart';
import 'lastbtn.dart';

class Resultpage extends StatelessWidget {
  Resultpage({ required this.bmiResult, required this.resultText, required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0a0e21),
        scaffoldBackgroundColor: Color(0xff0a0e21),
        textTheme: TextTheme(bodyText1: TextStyle(color: Colors.white)),

      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: Container(padding: EdgeInsets.all(10),
              child: Text('Your Result', style: kresultTextstyle,),
            )),
            Expanded(flex: 5,
                child: reusableCard(colour: kactivecardcolor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(resultText.toUpperCase(), style: kresult2Textstyle,),
                      Text(bmiResult, style: kbmiTextstyle,),
                      Text(interpretation, textAlign: TextAlign.center, style: kbodybmi),
                    ],
                  ),) ),
            bottomBtn(onTap:(){Navigator.pop(context);} ,
              btnText: 'RE-CALCULATE BMI',)
          ],
        ),
      ),
    );
  }
}







