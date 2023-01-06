import 'package:flutter/material.dart';
import 'constants.dart';


class bottomBtn extends StatelessWidget {
  bottomBtn({ required this.onTap, required this.btnText});
  final Function onTap;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () =>{onTap()},
      child: Container(
        color: kbottomContainercolor,
        height: kbottomContainerHeight,
        width: double.infinity,
        margin: EdgeInsets.only(top:20),
        padding: EdgeInsets.only(top: 20),
        child: Text(btnText, textAlign: TextAlign.center ,style: klargeTextstyle,),
      ),
    );
  }
}