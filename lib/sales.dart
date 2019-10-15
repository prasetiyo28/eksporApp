import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Sales extends StatefulWidget {
  @override
  _SalesState createState() => _SalesState();
}

class _SalesState extends State<Sales> {
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
              children: <Widget>[Text("Sales\nContract",textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),
            Align(
              alignment: Alignment.center,
                            child: Column( children: <Widget>[
                
                Padding(
                padding: const EdgeInsets.only(top: 50,left: 30,right: 30,bottom: 30),
                child: SizedBox(width: double.infinity,child: RaisedButton(child: Text("Incoterms"),onPressed: (){},)),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: SizedBox(width: double.infinity,child: RaisedButton(child: Text("Pembayaran"),onPressed: (){},)),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: SizedBox(width: double.infinity,child: RaisedButton(child: Text("Dokumen"),onPressed: (){},)),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: SizedBox(width: double.infinity,child: RaisedButton(child: Text("Transportasi"),onPressed: (){},)),
              ),
              ],),
            )],
            )
            
          ],
        ),
      ),
      
    );
  }
}