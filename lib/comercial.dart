import 'package:ekspor_apps/selamatcomercial.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as prefix0;

import 'mulai.dart';

class Comercial extends StatefulWidget {
  @override
  _ComercialState createState() => _ComercialState();
}

class _ComercialState extends State<Comercial> {
  @override
  Widget build(BuildContext context) {
  
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
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
                    "Commercial Invoice",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, color: Colors.white, fontWeight:FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      
                      "anda perlu membuat commercial invoice untuk menunjukan detail data produk anda ke importir",
                      textAlign: TextAlign.center,
                      style: TextStyle( color: Colors.white,fontSize: 24),
                      
                    ),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SelamatComercial()));
                        },
                        child: Text(
                          "Buat",
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
