import 'package:ekspor_apps/organisasi.dart';
import 'package:flutter/material.dart';

class Negara extends StatefulWidget {
  @override
  _NegaraState createState() => _NegaraState();
}

class _NegaraState extends State<Negara> {
  @override
  Widget build(BuildContext context) {
    final String text = '';
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
            Text("Pilih Negara Tujuan Export Anda", style: TextStyle(fontSize: 25),textAlign: TextAlign.center,),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Organisasi(text:'IJEPA')));
              }, child: Image.asset('assets/jepang.jpeg', height: 100,width: 100,fit: BoxFit.fitWidth)),
              RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Organisasi(text:'IPPTA')));
              }, child: Image.asset('assets/pakistan.jpg', height: 100, width: 100)),
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Organisasi(text:'AANZFTA')));
              }, child: Image.asset('assets/australia.jpeg', height: 100,width: 100,fit: BoxFit.fitWidth)),
              RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Organisasi(text:'IEU-CEPA')));
              }, child: Image.asset('assets/belanda.jpg', height: 100, width: 100,fit: BoxFit.fitWidth)),
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Organisasi(text:'ACFTA')));
              }, child: Image.asset('assets/china.jpeg', height: 100,width: 100,fit: BoxFit.fitWidth)),
              RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Organisasi(text:'AIFTA')));
              }, child: Image.asset('assets/india.jpg', height: 100, width: 100)),
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Organisasi(text:'AFTA')));
              }, child: Image.asset('assets/singapura.jpeg', height: 100,width: 100,fit: BoxFit.fitWidth)),
              RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Organisasi(text:'AKFTA')));
              }, child: Image.asset('assets/korea.jpeg', height: 100, width: 100)),
            ],
          ),
        ),
         
          ],
        )
        ));
  }
}
