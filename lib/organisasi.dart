import 'package:flutter/material.dart';
class Organisasi extends StatefulWidget {
  @override
  _OrganisasiState createState() => _OrganisasiState();
}

class _OrganisasiState extends State<Organisasi> {
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
            Row(children: <Widget>[
              Icon(Icons.calendar_today,),
              Text("Incoterms"),

            ],),
            Divider(),
            Row(children: <Widget>[
              Icon(Icons.calendar_today,),
              Text("Pembayaran"),

            ],),
            Divider(),
            Row(children: <Widget>[
              Icon(Icons.calendar_today,),
              Text("Dokumen"),

            ],),
            Divider(),
            Row(children: <Widget>[
              Icon(Icons.calendar_today,),
              Text("FTA"),

            ],),
            Divider(),
            Row(children: <Widget>[
              Icon(Icons.calendar_today,),
              Text("Exit"),

            ],)

          ],
        )),
        appBar: AppBar(
          title: Text("Perjanjian Dagang"),
        ),
        body: Container(child: Column(

          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50,right: 30,left: 30),
              child: Image.asset('assets/building.jpg',),
            ),
            Text("AFTA (Asean Free Trade Area)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            Text("AFTA adalah singkatan dari kepanjangan ASEAN Free Trade Area. Organisasi AFTA didirikan pada tahun 1992 di Singapura pada saat berlangsungnya Konferensi Tingkat Tinggi (KTT) ASEAN ke IV. , ",textAlign: TextAlign.center,),
            SizedBox(height: 50,),
            RaisedButton(onPressed: (){},child: Text("Mengerti"),)

          ],
        )
        ));
  }
}