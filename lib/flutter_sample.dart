import 'package:flutter/material.dart';

class FlutterSample extends StatefulWidget {
  const FlutterSample({super.key});

  @override
  State<FlutterSample> createState() => _FlutterSampleState();
}

class _FlutterSampleState extends State<FlutterSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text(
          'Container',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 150,
              color: Colors.orange,
              alignment: Alignment.center,
              child: const Text('No Decoration'),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              height: 150,
              //color: Colors.blueGrey,
              alignment: Alignment.center,
              child: Text(
                'Circular(30)',
                style:  const TextStyle(color: Colors.white),
              ),
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  border: Border.all(style: BorderStyle.none),
                  borderRadius: BorderRadius.circular(30)
                  ),
            ),
            const SizedBox(height: 20,),
            Container(
              height: 200,
              width: 250,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(
                  color: const Color.fromARGB(255, 0, 45, 248),
                  style: BorderStyle.solid,
                  width: 5,
                ),
                shape: BoxShape.circle,
              ),
              child: const Text('Circle'),
            )
          ],
        ),
      ),
    );
  }
}
