import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});
  @override
  State<DiceRoll> createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  List<String> rolling_num = ["1","2","3","4","5","6"];
  int current_index = 0;
  var random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.red,
          title: Text('Dice roll app',style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500
          ),),
        ) ,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(rolling_num[current_index],style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w500
              ),),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () => setState(() {
                  int num = random.nextInt(rolling_num.length);
                current_index = num;
              }) ,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red
              ),
               child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("Roll",style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),),
              ))
          
            ],
          ),
        ),
      ),
    );
  }
}