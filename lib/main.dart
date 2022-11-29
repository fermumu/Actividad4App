import 'package:flutter/material.dart';
import 'package:whatsappdemo/whatsapp_home.dart';

void main() {
  runApp(new MaterialApp(
    home: MyInicio(),
  ));
}

class MyInicio extends StatelessWidget {
  const MyInicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "WhatsappDemo",
      theme: new ThemeData(
        primaryColor: new Color(0xFFFFFF8D),
        accentColor: new Color(0xFFFFFF8D),
      ),
      debugShowCheckedModeBanner: false,
      home: new WhatsAppHome(),
    );
  }
}
