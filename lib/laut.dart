import 'package:ekspor_apps/transget.dart';
import 'package:ekspor_apps/transportasi.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as prefix0;

class Laut extends StatefulWidget {
  @override
  _LautState createState() => _LautState();
}

class _LautState extends State<Laut> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: new Image.asset(
              'assets/laut.jpeg',
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
                    "Anda akan mengirimkan barang Anda\nmenggunakan kapal",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  SizedBox(height: 100),
                  Center(
                                      child: Column(
                                        children: <Widget>[
                                          ButtonTheme(
                                            buttonColor: Colors.amber,
                                            child: RaisedButton(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(5)),
                                              onPressed: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>TransGet(text:'L')));
                                              },
                                              child: Text(
                                                "Setuju",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(color: Colors.white, fontSize: 20),
                                              ),
                                            ),
                                          ),
                                          ButtonTheme(
                                            buttonColor: Colors.grey,
                                            child: RaisedButton(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(5)),
                                              onPressed: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Transportasi()));
                                              },
                                              child: Text(
                                                "Tidak Setuju",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(color: Colors.white, fontSize: 20),
                                              ),
                                            ),
                                          ),
                                        ],
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
