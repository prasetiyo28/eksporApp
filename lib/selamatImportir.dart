import 'package:ekspor_apps/dok3.dart';
import 'package:ekspor_apps/dok5.dart';
import 'package:ekspor_apps/dok6.dart';
import 'package:ekspor_apps/home.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as prefix0;

import 'mulai.dart';

class SelamatImportir extends StatefulWidget {
  @override
  _SelamatImportirState createState() => _SelamatImportirState();
}

class _SelamatImportirState extends State<SelamatImportir> {
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
                    "SELAMAT\nanda telah melewati semua alur ekspor\n\nAnda telah berhasil menjadi eksportir",
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                        },
                        child: Text(
                          "Simulasi Kembali ?",
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
