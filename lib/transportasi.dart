import 'package:ekspor_apps/laut.dart';
import 'package:ekspor_apps/pembayaran.dart';
import 'package:ekspor_apps/udara.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui' as prefix0;
class Transportasi extends StatefulWidget {
  @override
  _TransportasiState createState() => _TransportasiState();
}

class _TransportasiState extends State<Transportasi> {
  @override
  Widget build(BuildContext context) {
    final String text = '';
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      
      body: Center(
        child: Stack(
          
          
          children: <Widget>[
            Center(
            child: new Image.asset(
              'assets/transportasi.jpeg',
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
              children: <Widget>[Text("Transportasi",textAlign: TextAlign.center,style: TextStyle(fontSize: 50,color: Colors.white),),
            Align(
              alignment: Alignment.center,
                            child: Column( children: <Widget>[
                
                Padding(
                padding: const EdgeInsets.only(top: 120,left: 30,right: 30,bottom: 30),
                child: SizedBox(width: double.infinity,child: RaisedButton(child: Text("Lewat Udara"),onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Udara()));
                },)),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: SizedBox(width: double.infinity,child: RaisedButton(child: Text("Lewat Laut"),onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Laut()));
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