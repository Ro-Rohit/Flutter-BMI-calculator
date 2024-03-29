import 'content.dart';
import 'package:flutter/material.dart';



class IconContent extends StatelessWidget {
  IconContent({ required this.icon, required this.gender});

  final IconData icon;
  final String gender;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80,),
        SizedBox(height: 15,),
        Text(gender, style: TextStyle(fontSize: 18, color: Color(0xff8d8e98)),)
      ],
    );
  }
}
