import 'package:ekspor_apps/dok2.dart';
import 'package:ekspor_apps/kontener.dart';
import 'package:ekspor_apps/selamatBank.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as prefix0;


class Pembiayaan extends StatefulWidget {
  @override
  _PembiayaanState createState() => _PembiayaanState();
}

class _PembiayaanState extends State<Pembiayaan> {
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
                    "Pembiayaan",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, color: Colors.white, fontWeight:FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      
                      "Pembiayaan Anda bisa mendapatkan pembiayaan ekspor dari bank,seperti\n1. Pre Shipment financing\n2. Post Shipment financing",
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SelamatBank()));
                        },
                        child: Text(
                          "Gunakan",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
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
                          "Abaikan",
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
