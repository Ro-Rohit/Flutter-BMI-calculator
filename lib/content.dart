import 'package:bmical/resultspage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable.dart';
import 'constants.dart';
import 'newbtns.dart';
import 'lastbtn.dart';
import 'calulator_brain.dart';



enum Gender{male, female}

class inputpage extends StatefulWidget {
  const inputpage({Key? key}) : super(key: key);

  @override
  State<inputpage> createState() => _inputpageState();
}

class _inputpageState extends State<inputpage> {

   Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),



      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Expanded(child:
            GestureDetector(
              onTap: (){setState(() {
                selectedGender = Gender.male;
              });},
              child: reusableCard(colour: selectedGender == Gender.male? kactivecardcolor : kinactivecardcolor,
                cardChild: IconContent(icon: FontAwesomeIcons.mars, gender: 'MALE'),
              ),
            )),
              Expanded(child: GestureDetector(
                onTap: (){setState(() {
                  selectedGender = Gender.female;
                });},
                child: reusableCard(
                  colour: selectedGender == Gender.female ?  kactivecardcolor : kinactivecardcolor,
                  cardChild: IconContent(icon: FontAwesomeIcons.venus, gender: 'FEMALE',),
                ),
              ))],),),





          Expanded(child: reusableCard(colour: kactivecardcolor,
          cardChild: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(child: Text('HEIGHT', style: klabelTextStyle,), padding: EdgeInsets.only(top: 1),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(kHeight.toString(), style: kheightTextstyle,),
                  Text('cm', style: klabelTextStyle,)
                ],
              ),
              SliderTheme(data: SliderTheme.of(context).copyWith(
                inactiveTrackColor: Color(0xff8d8e98),
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                thumbColor: Color(0xffeb1555),
                activeTrackColor: Colors.white,
                overlayColor: Color(0x29eb1555),
              ),
                child: Slider(value: kHeight.toDouble(),
                    min: 120,
                    max: 220,

                    onChanged: (double newValue){
                  setState(() {
                    kHeight = newValue.round();
                  });
                    }),
              )
            ],

          ),)),



          Expanded(child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Expanded(child:
            reusableCard(colour: kactivecardcolor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('WEIGHT', style: klabelTextStyle,),
                Text(kWeight.toString(), style: kheightTextstyle,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Btns(icon: FontAwesomeIcons.minus, onPressed: (){
                      setState(() {
                      kWeight--;});},
                    ),
                    Btns(icon: FontAwesomeIcons.plus, onPressed: (){setState(() {
                      kWeight++;
                    });},),

                  ],
                )
              ],
            ),
            ),),
              Expanded(child: reusableCard(colour: kactivecardcolor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('AGE', style: klabelTextStyle,),
                    Text(kage.toString(), style: kheightTextstyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Btns(icon: FontAwesomeIcons.minus, onPressed: (){setState(() {
                          kage--;
                        });},),
                        Btns(icon: FontAwesomeIcons.plus, onPressed: (){setState(() {
                          kage++;
                        });},),

                      ],
                    )
                  ],
                ),

              ))],),),


         bottomBtn(onTap: (){
           Calbrain calbrain =Calbrain(height: kHeight, weight: kWeight);

           Navigator.push(context, MaterialPageRoute(builder: (context) => Resultpage(
             bmiResult: calbrain.CalculateBMI(),
             resultText: calbrain.getResult(),
             interpretation: calbrain.getInterpretation(),
           )));},
         btnText: 'CALCULATE YOUR BMI',)
        ],
      ),
      );
  }
}












