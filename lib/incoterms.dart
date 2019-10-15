import 'package:flutter/material.dart';

class Incoterms extends StatefulWidget {
  @override
  _IncotermsState createState() => _IncotermsState();
}

class _IncotermsState extends State<Incoterms> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Center(
              child: new Image.asset(
                'assets/building.jpg',
                width: size.width,
                height: size.height,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "INCOTERMS",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Incoterms atau International Commercial Terms adalah kumpulan istilah yang dibuat untuk menyamakan pengertian antara penjual dan pembeli dalam peradagangan international",
                    textAlign: TextAlign.center,
                    
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RaisedButton(onPressed: () {}, child: Text("EXW")),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: RaisedButton(
                                onPressed: () {}, child: Text("FCA")),
                          ),
                          RaisedButton(onPressed: () {}, child: Text("CPT")),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RaisedButton(onPressed: () {}, child: Text("CIP")),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: RaisedButton(
                                onPressed: () {}, child: Text("DAT")),
                          ),
                          RaisedButton(onPressed: () {}, child: Text("DAP")),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RaisedButton(onPressed: () {}, child: Text("DDP")),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: RaisedButton(
                                onPressed: () {}, child: Text("FAS")),
                          ),
                          RaisedButton(onPressed: () {}, child: Text("FOB")),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RaisedButton(onPressed: () {}, child: Text("CFR")),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: RaisedButton(
                                onPressed: () {}, child: Text("CIF")),
                          ),
                          
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
