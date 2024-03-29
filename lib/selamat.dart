import 'package:ekspor_apps/sales.dart';
import 'package:flutter/material.dart';


class Selamat extends StatefulWidget {
  @override
  _SelamatState createState() => _SelamatState();
}

class _SelamatState extends State<Selamat> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: new Image.asset(
              'assets/selamat.jpg',
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
                  Text(
                    "Selamat Anda\nMenemukan Pembeli",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: ButtonTheme(
                        buttonColor: Colors.amber,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Sales()));
                          },
                          child: Text(
                            "Lanjut",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 20),
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
