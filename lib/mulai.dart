import 'package:ekspor_apps/sales.dart';
import 'package:ekspor_apps/selesai.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as prefix0;

class Mulai extends StatefulWidget {
  @override
  _MulaiState createState() => _MulaiState();
}

class _MulaiState extends State<Mulai> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          
         
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  
                                    Image.asset('assets/produksiBarang.gif'),
                  
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Produksi Barang..."),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Selesai()));
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
