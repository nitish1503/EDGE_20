import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF424242),
        elevation: 0.0,
      ),
      backgroundColor: Color(0xFF424242),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(40.0, 10.0, 0.0, 0.0),
            child: Text(
              "Event Categories",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          ExpansionTile(
            title: Text("Categories"),
            children: <Widget>[
              GridView.count(
                crossAxisCount: 4,
                children: <Widget>[

                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
