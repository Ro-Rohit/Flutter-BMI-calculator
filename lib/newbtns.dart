import 'package:flutter/material.dart';
import 'constants.dart';

class Btns extends StatelessWidget {
  Btns({required this.icon, required this.onPressed});

  final Function onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      shape: CircleBorder(),
        fillColor: Color(0xff4c4f5e),
        constraints: ksizeconstraint,
        elevation: 6,
        padding: EdgeInsets.all(5),
        onPressed: () => onPressed());

  }
}
