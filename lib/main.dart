import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: new Image.asset(
              'assets/building.jpg',
              width: size.width,
              height: size.height,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Selamat\nDatang",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 80,color: Colors.white),
                  ),
                  Text("Created by Natan Sausan Afif Tresno",
                   style: TextStyle(color: Colors.white),),
                  ButtonTheme(
                    buttonColor: Colors.amber,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        "Mulai",
                      
                      
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        
                      ),
                    ),
                  ),
                  Text("Mari Menjadi Eksportir",
                   style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
