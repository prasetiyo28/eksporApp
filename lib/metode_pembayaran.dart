import 'package:ekspor_apps/pembayaran.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui' as prefix0;
class Metode extends StatefulWidget {
  @override
  _MetodeState createState() => _MetodeState();
}

class _MetodeState extends State<Metode> {
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
              'assets/pembayaran.jpg',
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
                  color: Colors.black.withOpacity(0.4),

                )
              ),
            ),
          ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text("Pembayaran",textAlign: TextAlign.center,style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),),
            Align(
              alignment: Alignment.center,
                            child: Column( children: <Widget>[
                
                Padding(
                padding: const EdgeInsets.only(top: 120,left: 30,right: 30,bottom: 30),
                child: SizedBox(width: double.infinity,child: ButtonTheme(
                  buttonColor: Colors.amber,
                                  child: RaisedButton(child: Text("Letter of Credit",style: TextStyle(fontSize: 20, color: Colors.white)),onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Pembayaran(text: 'LOC')));
                  },),
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: SizedBox(width: double.infinity,child: ButtonTheme(
                  buttonColor: Colors.amber,

                                  child: RaisedButton(child: Text("Open Account",style: TextStyle(fontSize: 20, color: Colors.white),),onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Pembayaran(text: 'OA')));
                  },),
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: SizedBox(width: double.infinity,child: ButtonTheme(
                  buttonColor: Colors.amber,
                                  child: RaisedButton(child: Text("Advance Payment",style: TextStyle(fontSize: 20, color: Colors.white),),onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Pembayaran(text: 'AP')));
                  },),
                )),
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