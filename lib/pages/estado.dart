import 'package:flutter/material.dart';
import 'package:whatsappdemo/models/status_model.dart';

class Estado extends StatefulWidget {
  Estado({Key? key}) : super(key: key);

  @override
  State<Estado> createState() => _EstadoState();
}

class _EstadoState extends State<Estado> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).accentColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(status[2].imageUrl),
            ),
            title: new Text(
              status[2].name,
              style: new TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: new Text("Mensaje Escrito"),
          ),
          new Text("Recientes",
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor)),
          new ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).accentColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(status[1].imageUrl),
            ),
            title: new Text(
              status[1].name,
              style: new TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: new Text("Texto escrito"),
          ),
          new Divider(),
          new ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).accentColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(status[3].imageUrl),
            ),
            title: new Text(
              status[3].name,
              style: new TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: new Text("Texto escrito"),
          )
        ],
      ),
    );
  }
}
