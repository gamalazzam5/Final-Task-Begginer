import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorContainer extends StatelessWidget{
 final  Color color;

  const ColorContainer({super.key, required this.color});
  @override
  Widget build(BuildContext context) {

  return Container(
    margin: EdgeInsets.only(left: 5),
    height: 25,
    width: 25,
    decoration:
    BoxDecoration(color: color,borderRadius: BorderRadius.circular(25),border: Border.all(color:Colors.grey)),);
  }

}