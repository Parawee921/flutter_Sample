import 'package:flutter/material.dart';

class MyContrainer extends StatelessWidget {
  const MyContrainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Using Contrainer',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFFB00020),
        centerTitle: true,
      ),
      body: Center(
       child: Column(
        children: [
          contrainer1(),
          contrainer2(),
        ],

       ),
      )
      );
  }
  Widget contrainer2() => Container(
    height: 250,width: 300,
    margin: const EdgeInsets.all(50),
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: Colors.white,
        width: 2
      ),
      shape: BoxShape.rectangle,
      borderRadius: const BorderRadius.all(Radius.elliptical(10, 10)),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 10,
          offset: const Offset(3, 3)
        )
      ]
    ),
    //color: Colors.black87,
    child: const Center(
    child: Text('L O V E',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
    
  ),
  );
  Widget contrainer1() => Container(
     height: 250,
        width: 300,
        margin: const EdgeInsets.all(30),
        decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: Colors.white,
        width: 2
      ),
      shape: BoxShape.rectangle,
      borderRadius: const BorderRadius.all(Radius.elliptical(10, 10)),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 10,
          offset: const Offset(3, 3)
        )
      ]
    ),
        //color: Colors.white,
        child: const Center(
        child:  Text('I am Rich',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 40),
        )
      ),
  );
}
