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
        primaryColor: new Color(0xff00695C),
        accentColor: new Color(0xff004D11),
      ),
      debugShowCheckedModeBanner: false,
      home: new WhatsAppHome(),
    );
  }
}
