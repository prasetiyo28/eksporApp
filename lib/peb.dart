import 'package:ekspor_apps/kontener.dart';
import 'package:ekspor_apps/selamatPeb.dart';
import 'package:ekspor_apps/selamatcomercial.dart';
import 'package:ekspor_apps/selamatshipping.dart';
import 'package:ekspor_apps/syarat.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as prefix0;

import 'mulai.dart';

class Peb extends StatefulWidget {
  @override
  _PebState createState() => _PebState();
}

class _PebState extends State<Peb> {
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
                
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      
                      "anda perlu untuk membuat Surat keterangan asal (SKA) untuk menunjukan asal dari produk anda. untuk mendapatkan SKA anda memerlukan PEB(pemberitahuan ekspor barang).",
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SelamatPeb()));
                        },
                        child: Text(
                          "Dapatkan PEB",
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
