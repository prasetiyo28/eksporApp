import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Metode extends StatefulWidget {
  @override
  _MetodeState createState() => _MetodeState();
}

class _MetodeState extends State<Metode> {
  @override
  Widget build(BuildContext context) {
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text("Pembayaran",textAlign: TextAlign.center,style: TextStyle(fontSize: 50),),
            Align(
              alignment: Alignment.center,
                            child: Column( children: <Widget>[
                
                Padding(
                padding: const EdgeInsets.only(top: 120,left: 30,right: 30,bottom: 30),
                child: SizedBox(width: double.infinity,child: RaisedButton(child: Text("Letter of Credit"),onPressed: (){},)),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: SizedBox(width: double.infinity,child: RaisedButton(child: Text("Open Account"),onPressed: (){},)),
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