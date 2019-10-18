import 'package:ekspor_apps/kemen.dart';
import 'package:ekspor_apps/sales.dart';
import 'package:flutter/material.dart';

import 'dok6.dart';


class Dok5 extends StatefulWidget {
  @override
  _Dok5State createState() => _Dok5State();
}

class _Dok5State extends State<Dok5> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: new Image.asset(
              'assets/dok5.jpeg',
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Kemen()));
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
