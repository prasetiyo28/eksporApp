import 'package:ekspor_apps/dok1.dart';
import 'package:ekspor_apps/selamatSertifikat.dart';
import 'package:ekspor_apps/selamatcomercial.dart';
import 'package:ekspor_apps/selamatshipping.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as prefix0;

import 'mulai.dart';

class Inspeksi extends StatefulWidget {
  @override
  _InspeksiState createState() => _InspeksiState();
}

class _InspeksiState extends State<Inspeksi> {
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
                    "Perusahaan Inspeksi",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, color: Colors.white, fontWeight:FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Di perusahaan inspeksi anda mendapatkan Sertifikat kelayakan produk, untuk membuktikan bahwa produk anda layak diperjualbelikan.",
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SelamatSertifikat()));
                        },
                        child: Text(
                          "Dapatkan",
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
