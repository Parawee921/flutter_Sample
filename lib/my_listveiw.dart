import 'dart:math';
import 'package:flutter/material.dart';

class MyListViewPage extends StatefulWidget {
  const MyListViewPage({super.key});

  @override
  State<MyListViewPage> createState() => _MyListViewPageState();
}

class _MyListViewPageState extends State<MyListViewPage> {
  var rnd = Random();
  var titleText = ['Star', 'Heart', 'Wi-Fi', 'Bluetooth', 'Gear'];
  var leadingIcon = [Icons.star, Icons.favorite, Icons.wifi, Icons.bluetooth, Icons.settings];

  var switchWifi = true;
  var switchBluetooth = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('ListView'),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: titleText.length,
        itemBuilder: (context, index) => buildListItem(context, index),
        separatorBuilder: (context, index) => const Divider(
          thickness: 1,
          color: Colors.purple,
          indent: 10,
          endIndent: 10,
        ),
      ),
    );
  }

  Widget buildListItem(BuildContext ctx, int index) => ListTile(
        leading: Icon(leadingIcon[index], size: 36),
        title: Text(titleText[index]),
        subtitle: Text('\$${10 + rnd.nextInt(50) + 10}'),
        trailing: trailingWidget(ctx, index),
        iconColor: Colors.black,
        onTap: () {
          myAlert(ctx, 'เปิดดูรายการ ${titleText[index]}');
        },
      );

  Widget trailingWidget(BuildContext ctx, int index) {
    var widgets = <Widget>[
      const Icon(Icons.arrow_forward_ios),
      InkWell(
        child: const Icon(Icons.shopping_cart),
        onTap: () => myAlert(ctx, 'ได้หยิบ ${titleText[index]} ใส่รถเข็นแล้ว'),
      ),
      Switch(
        value: switchWifi,
        onChanged: (isOn) => setState(() {
          switchWifi = isOn;
          var msg = isOn ? 'เปิด' : 'ปิด';
          myAlert(ctx, '${titleText[index]}: $msg');
        }),
      ),
      Switch(
        value: switchBluetooth,
        onChanged: (isOn) => setState(() {
          switchBluetooth = isOn;
          var msg = isOn ? 'เปิด' : 'ปิด';
          myAlert(ctx, '${titleText[index]}: $msg');
        }),
      ),
      InkWell(
        child: const Icon(Icons.shopping_cart),
        onTap: () => myAlert(ctx, 'ได้หยิบ ${titleText[index]} ใส่รถเข็นแล้ว'),
      ),
    ];
    return widgets[index];
  }

  void myAlert(BuildContext ctx, String txt) {
    showDialog(
      context: ctx,
      builder: (ctx) => AlertDialog(
        content: Text(txt),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
