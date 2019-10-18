import 'package:ekspor_apps/comercial.dart';
import 'package:ekspor_apps/dok2.dart';
import 'package:ekspor_apps/sales.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as prefix0;

import 'mulai.dart';

class SelamatBank extends StatefulWidget {
  @override
  _SelamatBankState createState() => _SelamatBankState();
}

class _SelamatBankState extends State<SelamatBank> {
  @override
  Widget build(BuildContext context) {
  
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: new Image.asset(
              'assets/sepakat.jpeg',
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
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Anda Mendapatkan Pembiayaan dari Bank",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 50, color: Colors.white, fontWeight:FontWeight.bold),
                  ),
                  
                  
                  SizedBox(height: 100),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ButtonTheme(
                      buttonColor: Colors.amber,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Dok2()));
                        },
                        child: Text(
                          "Lanjut",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
