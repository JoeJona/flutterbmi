import 'package:bmiapp/widgets/leftbar.dart';
import 'package:bmiapp/widgets/rightbar.dart';
import 'package:bmiapp/constans/constans.dart';
import 'package:flutter/material.dart';

import '../constans/constans.dart';
import '../constans/constans.dart';
import '../constans/constans.dart';
import '../constans/constans.dart';
import '../widgets/leftbar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

TextEditingController height = TextEditingController();
TextEditingController weight = TextEditingController();
double bmi = 0;
String result = "";

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator APP",
          style: TextStyle(color: accentHexColor, fontWeight: FontWeight.w300),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: mainHexColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  child: TextField(
                    controller: height,
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w200,
                      color: accentHexColor,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Height",
                        hintStyle: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                          color: Colors.white.withOpacity(.8),
                        ),
                        ),
                  ),
                ),
                Container(
                    width: 130,
                    child: TextField(
                      controller: weight,
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w200,
                        color: accentHexColor,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Weight",
                          hintStyle: TextStyle(
                            fontSize: 42,
                            fontWeight: FontWeight.w300,
                            color: Colors.white.withOpacity(.8),
                          ),
                          ),
                    ))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: (){
                double h = double.parse(height.text);
                double w = double.parse(weight.text);
                setState(() {
                  bmi = w / (h*h);
                  if(bmi>25){result='Over Weight';}
                  else if(bmi>18) {result="Normal Weight";}
                  else {result="Under Weight";}
                });
              },
              child: Text(
                "Calculate",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: accentHexColor,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Text(
                bmi.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 90,
                  color: accentHexColor,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Visibility(
              visible: result.isNotEmpty,
              child:Container(
              child: Text(
                result,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                  color: accentHexColor,
                ),
              ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            LeftBar(barWidth: 40),
            SizedBox(
              height: 20,
            ),
            LeftBar(barWidth: 70),
            SizedBox(
              height: 20,
            ),
            LeftBar(barWidth: 40),
            SizedBox(
              height: 20,
            ),
            RightBar(barWidth: 70),
            SizedBox(
              height: 30,
            ),
            RightBar(barWidth: 70),
          ],
        ),
      ),
    );
  }
}
