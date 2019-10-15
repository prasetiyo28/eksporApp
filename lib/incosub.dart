import 'package:flutter/material.dart';

class IncoSub extends StatefulWidget {
  @override
  _IncoSubState createState() => _IncoSubState();
}

class _IncoSubState extends State<IncoSub> {
  @override
  
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        drawer: Drawer(
            child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[Icon(Icons.calendar_today), Text("Simulasi")],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Icon(
                  Icons.calendar_today,
                ),
                Text("Incoterms"),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Icon(
                  Icons.calendar_today,
                ),
                Text("Pembayaran"),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Icon(
                  Icons.calendar_today,
                ),
                Text("Dokumen"),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Icon(
                  Icons.calendar_today,
                ),
                Text("FTA"),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Icon(
                  Icons.calendar_today,
                ),
                Text("Exit"),
              ],
            )
          ],
        )),
        appBar: AppBar(
          title: Text("Incoterms"),
        ),
        body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           
            Image.asset(
              'assets/incoSub.jpeg',
              width: size.width,
            
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("EXW - Ex Works",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text("Pihak penjual menentukan tempat pengambilan barang, Pihak pembeli bertanggung jawab untuk biaya angkut, resiko selama perjalanan dan biaya saat pembongkaran." ,textAlign: TextAlign.center,),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: RaisedButton(onPressed: (){},child: Text("Mengerti"),),
            )
           
          ],
        )));
  }
}
