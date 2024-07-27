import 'package:bmi/views/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class bmi extends StatefulWidget {
  const bmi({super.key,});


  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  bool is_Male_clicked = false ;
  bool is_Female_clicked = false ;
  double height = 0 ;
  int age = 15 ;
  int weight = 40 ;
  String gender = '';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('B',style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color(0xffffafcc)
            ),),
            Text('M',style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xff8ecae6)
            ),),
            Text('I',style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xffffafcc)
            ),),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      gender = 'male';
                      setState(() {
                        is_Male_clicked = true ;
                        is_Female_clicked = false ;
                      });
                      },
                    child: Container(
                      width: 200,
                      height: 150,
                      decoration: BoxDecoration(
                        border: is_Male_clicked ? Border.all(
                          width: 4,
                          color: const Color(0xffd14081)) : Border.all(style: BorderStyle.none),
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          color: const Color(0xfff2bac9)
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.male,color: Colors.white,size: 40,),
                          Text('Male',style: TextStyle(
                            fontSize: 28,
                            color: Colors.white
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8,),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      gender = 'female' ;
                      setState(() {
                        is_Female_clicked = true ;
                        is_Male_clicked = false ;
                      });
                    },
                    child: Container(
                      width: 200,
                      height: 150,
                      decoration: BoxDecoration(
                          border: is_Female_clicked? Border.all(
                              width: 4,
                              color: const Color(0xffd14081)) : Border.all(style: BorderStyle.none),
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          color: const Color(0xfff2bac9)
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.female,color: Colors.white,size: 40,),
                          Text('Female',style: TextStyle(
                              fontSize: 28,
                              color: Colors.white
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15,),
            Container(
              width: MediaQuery.of(context).size.width,
              height:200,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xfff2bac9)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Height',style: TextStyle(
                    color: Colors.white,
                    fontSize: 28
                  ),),
                  Text('${height.toInt()}',style: const TextStyle(
                      color: Colors.white,
                      fontSize: 28
                  ),),
                  Slider(
                    activeColor: const Color(0xffd14081),
                    min: 0,
                    max: 200,
                    value: height,
                    onChanged: (value) {
                      setState(() {
                        height = value;
                      });
                  },)
                ],
              ),
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 200,
                  width: 180,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xfff2bac9)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('Age',style: TextStyle(
                        color: Colors.white,
                        fontSize: 28
                      ),),
                      Text('$age',style: const TextStyle(
                          color: Colors.white,
                          fontSize: 28
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Color(0xffd14081)
                            ),
                            width: 50,
                            height: 50,
                            child: IconButton(icon: const Icon(Icons.add,color: Colors.white,),onPressed: () {
                              setState(() {
                                age++ ;
                              });
                            },),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                color: Color(0xffd14081)
                            ),
                            width: 50,
                            height: 50,
                            child: IconButton(icon: const Icon(Icons.minimize_sharp,color: Colors.white,),onPressed: () {
                              setState(() {
                                age-- ;
                              });
                            },),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  width: 180,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xfff2bac9)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('Weight',style: TextStyle(
                          color: Colors.white,
                          fontSize: 28
                      ),),
                      Text('$weight',style: const TextStyle(
                          color: Colors.white,
                          fontSize: 28
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                color: Color(0xffd14081)
                            ),
                            width: 50,
                            height: 50,
                            child: IconButton(icon: const Icon(Icons.add,color: Colors.white,),onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                color: Color(0xffd14081)
                            ),
                            width: 50,
                            height: 50,
                            child: IconButton(icon: const Icon(Icons.minimize_sharp,color: Colors.white,),onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return result(height: height,weight: weight,gender: gender,);
                },));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xffd14081)
                ),
                child: const Center(
                  child: Text('CALC BMI',style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
