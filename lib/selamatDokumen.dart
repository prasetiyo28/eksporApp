import 'package:ekspor_apps/dok3.dart';
import 'package:ekspor_apps/dok5.dart';
import 'package:ekspor_apps/selamatLengkap.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as prefix0;

import 'mulai.dart';

class SelamatDokumen extends StatefulWidget {
  @override
  _SelamatDokumenState createState() => _SelamatDokumenState();
}

class _SelamatDokumenState extends State<SelamatDokumen> {
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
                    "Dokumen anda telah diproses, anda mendapatkan SKA (Surat Keterangan Asal)",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, color: Colors.white, fontWeight:FontWeight.bold),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SelamatLengkap()));
                        },
                        child: Text(
                          "Ambil",
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
