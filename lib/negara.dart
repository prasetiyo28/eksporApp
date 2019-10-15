import 'package:flutter/material.dart';

class Negara extends StatefulWidget {
  @override
  _NegaraState createState() => _NegaraState();
}

class _NegaraState extends State<Negara> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[Icon(Icons.calendar_today), Text("Simulasi")],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Icon(
                  Icons.calendar_today,
                ),
                Text("Incoterms"),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Icon(
                  Icons.calendar_today,
                ),
                Text("Pembayaran"),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Icon(
                  Icons.calendar_today,
                ),
                Text("Dokumen"),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Icon(
                  Icons.calendar_today,
                ),
                Text("FTA"),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Icon(
                  Icons.calendar_today,
                ),
                Text("Exit"),
              ],
            )
          ],
        )),
        appBar: AppBar(
          title: Text("Negara Tujuan"),
        ),
        body: Container(
            child: Column(
          children: <Widget>[
            Text(
              "Pilih negara tujuan ekspor anda",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/building.jpg',
                  height: 150,
                  width: 150,
                ),
                Image.asset('assets/building.jpg', height: 150, width: 150),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/building.jpg',
                  height: 150,
                  width: 150,
                ),
                Image.asset('assets/building.jpg', height: 150, width: 150),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/building.jpg',
                  height: 150,
                  width: 150,
                ),
                Image.asset('assets/building.jpg', height: 150, width: 150),
              ],
            ),
          ],
        )));
  }
}
