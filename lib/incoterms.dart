import 'package:ekspor_apps/incosub.dart';
import 'package:flutter/material.dart';

class Incoterms extends StatefulWidget {
  @override
  _IncotermsState createState() => _IncotermsState();
}

class _IncotermsState extends State<Incoterms> {
  final String text = '';
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
                          RaisedButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>IncoSub(text: 'EXW')));
                          }, child: Text("EXW")),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: RaisedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>IncoSub(text: 'FCA')));
                                }, child: Text("FCA")),
                          ),
                          RaisedButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>IncoSub(text: 'CPT')));
                          }, child: Text("CPT")),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RaisedButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>IncoSub(text: 'CIP')));
                          }, child: Text("CIP")),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: RaisedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>IncoSub(text: 'DAT')));
                                }, child: Text("DAT")),
                          ),
                          RaisedButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>IncoSub(text: 'DAP')));
                          }, child: Text("DAP")),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RaisedButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>IncoSub(text: 'DDP')));
                          }, child: Text("DDP")),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: RaisedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>IncoSub(text: 'FAS')));
                                }, child: Text("FAS")),
                          ),
                          RaisedButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>IncoSub(text: 'FOB')));
                          }, child: Text("FOB")),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RaisedButton(onPressed: () {}, child: Text("CFR")),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: RaisedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>IncoSub(text: 'CIF')));
                                }, child: Text("CIF")),
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
