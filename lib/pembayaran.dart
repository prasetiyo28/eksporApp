import 'package:ekspor_apps/produksi.dart';
import 'package:ekspor_apps/sales.dart';
import 'package:flutter/material.dart';

class Pembayaran extends StatefulWidget {
final String text;
  Pembayaran({Key key, @required this.text}) : super(key: key);
  @override
  _PembayaranState createState() => _PembayaranState();
}

class _PembayaranState extends State<Pembayaran> {
  @override
  
  Widget build(BuildContext context) {
    var text = widget.text;
  
  var title = '';
  var contents = '';
  var image = '';
  if (text == 'LOC') {
    title = 'Letter of Credit';
    contents = 'Letter of Credit adalah sebuah cara pembayaran internasional yang memungkinkan eksportir menerima pembayaran tanpa menunggu berita dari luar negeri setelah barang dan berkas dokumen dikirimkan keluar negeri (kepada pemesan/importir) dan akan memudahkan pihak-pihak yang berada didalamnya.';
    image = 'assets/lc.jpg';
  }else if(text == 'AP'){
    title = 'Advance Payment';
    contents = 'Advance Payment adalah pembayaran yang dilakukan oleh importir kepada eksportir sebelum barang dikapalkan, baik untuk seluruh nilai barang (full payment) maupun untuk sebagian (partial payment).';
    image = 'assets/advanPayment.jpeg';
  }else {
    title = 'Open Account';
    contents = 'Open Account adalah sistem pembayaran dimana belum dilakukan pembayaran apa-apa oleh importir kepada eksportir sebelum barang dikapalkan atau tiba dan diterima importir atau sebelum waktu tertentu yang telah disepakati.';
    image = 'assets/advanPayment.jpg';
  }
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
          title: Text("Pembayaran"),
        ),
        body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           
            Image.asset(
              image,
              width: size.width,
            
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(contents ,textAlign: TextAlign.center,),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: RaisedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Produksi()));
              },child: Text("Mengerti"),),
            )
           
          ],
        )));
  }
}
