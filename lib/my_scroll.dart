import 'package:flutter/material.dart';

class MyScrollView extends StatelessWidget {
  const MyScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:const Color(0xFF00897B) ,
        title: const Text('Scroll Veiw'),
        centerTitle: true,
      ),
      body:  SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding:  const EdgeInsets.all(10),
        child: Center(
            child: Row(
          children: <Widget>[
              boxContainer('One'),
              boxContainer('Two'),
              boxContainer('Three'),
              boxContainer('Four'),
              boxContainer('Fight'),
              boxContainer('I'),
              boxContainer('Love'),
              boxContainer('Cat'),
              boxContainer('Very'),
              boxContainer('much'),
              Icon(Icons.cloudy_snowing,size: 50,),
              Icon(Icons.catching_pokemon,size: 50,),
              Icon(Icons.nature_people,size: 50,),
              Icon(Icons.backpack,size: 50,),
              Icon(Icons.snowboarding,size: 50,),
              Icon(Icons.motorcycle,size: 50,),
          ]
        )),
      ),
    );
  }
  Widget boxContainer(String txt) => Container(
    width: 200,
    height: 150,
    //color: Colors.white,
    margin: const EdgeInsets.all(20),
    alignment: Alignment.center,
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
        child:  Text(txt,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),
        )
  );
}
