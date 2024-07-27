import 'dart:math';

import 'package:flutter/material.dart';

class result extends StatelessWidget {
  const result({super.key , required this.height, required this.weight, required this.gender});
  final double height ;
  final int weight ;
  final String gender ;

  @override
  Widget build(BuildContext context) {
    double bmi_calc = weight / pow(height/100, 2) ;
    Color backgroundColor;
    String bmi_category = getBmiCategory(bmi_calc);

    if (gender.toLowerCase() == 'male') {
      backgroundColor = const Color(0xff8ecae6);
    } else if (gender.toLowerCase() == 'female') {
      backgroundColor = const Color(0xffffafcc);
    } else {
      backgroundColor = Colors.grey;
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('BMI IS : ',style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold
            ),),

          ),
          Center(
            child: Text('${bmi_calc.toInt()}',style: const TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold
            ),),

          ),
          Center(
            child: Text(bmi_category,style: const TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold
            ),),

          ),
          const SizedBox(height: 20,),
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: const Icon(Icons.refresh,color: Colors.white,size: 35,))
        ],
      ),
    );
  }
}

String getBmiCategory(double bmi) {
  if (bmi < 18.5) {
    return 'Underweight';
  } else if (bmi >= 18.5 && bmi < 24.9) {
    return 'Normal weight';
  } else if (bmi >= 25 && bmi < 29.9) {
    return 'Overweight';
  } else if (bmi >= 30 && bmi < 34.9) {
    return 'Obese (Class 1)';
  } else if (bmi >= 35 && bmi < 39.9) {
    return 'Obese (Class 2)';
  } else {
    return 'Obese (Class 3)';
  }
}