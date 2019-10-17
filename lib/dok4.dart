import 'package:ekspor_apps/sales.dart';
import 'package:flutter/material.dart';

import 'dok5.dart';


class Dok4 extends StatefulWidget {
  @override
  _Dok4State createState() => _Dok4State();
}

class _Dok4State extends State<Dok4> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: new Image.asset(
              'assets/dok4.jpeg',
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Dok5()));
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
