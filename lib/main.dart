import 'dart:ui' as prefix0;

import 'package:ekspor_apps/home.dart';
// import 'package:ekspor_apps/incosub.dart';
// import 'package:ekspor_apps/incoterms.dart';
// import 'package:ekspor_apps/komoditi.dart';
// import 'package:ekspor_apps/metode_pembayaran.dart';
// import 'package:ekspor_apps/negara.dart';
// import 'package:ekspor_apps/organisasi.dart';
// import 'package:ekspor_apps/pembayaran.dart';
// import 'package:ekspor_apps/sales.dart';
// import 'package:ekspor_apps/selamat.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    
    home: new Home()
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
  
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: new Image.asset(
              'assets/building.jpg',
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
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Selamat\nDatang",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 80,color: Colors.white),
                  ),
                  Text("Created by Natan Sausan Afif Tresno",
                   style: TextStyle(color: Colors.white),),
                  ButtonTheme(
                    buttonColor: Colors.amber,
                    child: RaisedButton(
                      padding: EdgeInsets.only(right: 80, left: 80),
                      
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                        
                      ),
                      onPressed: () {},
                      child: Text(
                        "Mulai",
                      
                      
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        
                      ),
                    ),
                  ),
                  Text("Mari Menjadi Eksportir",
                   style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
