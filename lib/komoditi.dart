import 'package:ekspor_apps/negara.dart';
import 'package:flutter/material.dart';

class Komoditi extends StatefulWidget {
  @override
  _KomoditiState createState() => _KomoditiState();
}

class _KomoditiState extends State<Komoditi> {
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
          title: Text("Komoditi"),
        ),
        body: Container(child: Column(
          children: <Widget>[
            Text("Pilih Komoditi Yang Ingin Anda Export", style: TextStyle(fontSize: 30),textAlign: TextAlign.center,),
            Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Negara()));
            }, child: Image.asset('assets/emas.jpeg', height: 150,width: 150,fit: BoxFit.fitWidth)),
            RaisedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Negara()));
            }, child: Image.asset('assets/kayu.jpeg', height: 150, width: 150)),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Negara()));
              }, child: Image.asset('assets/batubara.jpeg', height: 150,width: 150,fit: BoxFit.fitHeight)),
              RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Negara()));
              }, child: Image.asset('assets/minyak.jpeg', height: 150, width: 150,fit: BoxFit.fitWidth)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Negara()));
              }, child: Image.asset('assets/karet.jpeg', height: 150,width: 150,fit: BoxFit.fitHeight)),
              RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Negara()));
              }, child: Image.asset('assets/tembaga.jpeg', height: 150, width: 150)),
            ],
          ),
        ),
         
          ],
        )
        ));
  }
}
