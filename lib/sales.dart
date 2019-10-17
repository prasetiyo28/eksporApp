import 'package:ekspor_apps/dok.dart';
import 'package:ekspor_apps/incoterms.dart';
import 'package:ekspor_apps/metode_pembayaran.dart';
import 'package:ekspor_apps/transportasi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui' as prefix0;
class Sales extends StatefulWidget {
  @override
  _SalesState createState() => _SalesState();
}

class _SalesState extends State<Sales> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      
      body: Center(
        child: Stack(
          
          
          children: <Widget>[
            Center(
            child: new Image.asset(
              'assets/sign.jpg',
              width: size.width,
              height: size.height,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: BackdropFilter(
              filter: prefix0.ImageFilter.blur(sigmaX: 5, sigmaY: 6),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.2),
                )
              ),
            ),
          ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text("Sales\nContract",textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),
            Align(
              alignment: Alignment.center,
                            child: Column( children: <Widget>[
                
                Padding(
                padding: const EdgeInsets.only(top: 50,left: 30,right: 30,bottom: 30),
                child: SizedBox(width: double.infinity,child: RaisedButton(child: Text("Incoterms"),onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Incoterms()));
                },)),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: SizedBox(width: double.infinity,child: RaisedButton(child: Text("Pembayaran"),onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Metode()));
                },)),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: SizedBox(width: double.infinity,child: RaisedButton(child: Text("Transportasi"),onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Transportasi()));
                },)),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: SizedBox(width: double.infinity,child: RaisedButton(child: Text("Dokumen"),onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Dok()));
                },)),
              ),
              
              ],),
            )],
            )
            
          ],
        ),
      ),
      
    );
  }
}