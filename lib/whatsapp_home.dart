import 'package:flutter/material.dart';
import 'package:whatsappdemo/pages/camara.dart';
import 'package:whatsappdemo/pages/chats.dart';
import 'package:whatsappdemo/pages/estado.dart';
import 'package:whatsappdemo/pages/llamadas.dart';
import 'package:whatsappdemo/pages/contacts.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => new _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  late TabController _time;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("WhatsApp Demo"),
        bottom: new TabBar(controller: _tabController, tabs: <Widget>[
          new Tab(icon: Icon(Icons.camera_alt)),
          new Tab(text: "CHATS"),
          new Tab(text: "ESTADOS"),
          new Tab(text: "LLAMADAS"),
        ]),
      ),
      body: new TabBarView(controller: _tabController, children: <Widget>[
        new Camara(),
        new Chats(),
        new Estado(),
        new Llamada()
      ]),
      floatingActionButton: new FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: new Icon(
            Icons.message,
            color: Colors.white,
          ),
          onPressed: () {
            var route = new MaterialPageRoute(
                builder: (BuildContext context) => new Contacts());
            Navigator.of(context).push(route);
          }),
    );
  }
}
