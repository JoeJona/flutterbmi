import 'package:flutter/material.dart';
import 'package:bmiapp/constans/constans.dart';

import '../constans/constans.dart';

class LeftBar extends StatelessWidget {
  final double barWidth;

  const LeftBar({Key key, @required this.barWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {

       return Row(
         mainAxisAlignment: MainAxisAlignment.end,
         children: [
           Container(
             height: 15,
             width: barWidth,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(20),
                 bottomLeft: Radius.circular(20),
               ),
               color: accentHexColor ),

           ),
         ],
       );
  }
}
