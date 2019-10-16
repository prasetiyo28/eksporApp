import 'package:flutter/material.dart';

class Pembayaran extends StatefulWidget {
  @override
  _PembayaranState createState() => _PembayaranState();
}

class _PembayaranState extends State<Pembayaran> {
  @override
  
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
          title: Text("Pembayaran"),
        ),
        body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           
            Image.asset(
              'assets/advanPayment.jpeg',
              width: size.width,
            
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Advance Payment",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text("adalah pembayaran yang dilakukan oleh importir kepada eksportir sebelum barang dikapalkan, baik untuk seluruh nilai barang (full payment) maupun untuk sebagian (partial payment)." ,textAlign: TextAlign.center,),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: RaisedButton(onPressed: (){},child: Text("Mengerti"),),
            )
           
          ],
        )));
  }
}
