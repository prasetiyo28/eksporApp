import 'package:ekspor_apps/sales.dart';
import 'package:ekspor_apps/transportasi.dart';
import 'package:flutter/material.dart';

import 'dok4.dart';


class Dok3 extends StatefulWidget {
  @override
  _Dok3State createState() => _Dok3State();
}

class _Dok3State extends State<Dok3> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: new Image.asset(
              'assets/dok3.jpeg',
              width: size.width,
              height: size.height,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: ButtonTheme(
                        buttonColor: Colors.white,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Transportasi()));
                          },
                          child: Text(
                            "Lanjut",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
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
