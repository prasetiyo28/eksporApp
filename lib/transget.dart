import 'package:ekspor_apps/sales.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as prefix0;

import 'mulai.dart';

class TransGet extends StatefulWidget {
  final String text;
  TransGet({Key key, @required this.text}) : super(key: key);
  @override
  _TransGetState createState() => _TransGetState();
}

class _TransGetState extends State<TransGet> {
  @override
  Widget build(BuildContext context) {
   var text = widget.text;
  
  var title = '';
  var contents = '';
  var image = '';
  if(text == 'L'){
    title = 'Anda Mendapatkan \n Bill of Lading';
    contents = 'Bill of Lading adalah dokumen pengangkutan barang yang di dalamnya memuat informasi lengkap mengenai nama pengirim, nama kapal, data muatan, pelabuhan muat dan pelabuhan bongkar, rincian freight dan cara pembayarannya, nama consignee atau pemesan, jumlah B/L original yang dikerluarkan dan tanggal dari penandatanganan.';
    image = 'assets/laut.jpeg';
  }else {
    title = 'Anda Mendapatkan Airwayw of Bill';
    contents = 'AWB adalah dokumen yang harus ada pada tiap pengangkutan udara. AWB juga berfungsi untuk pencairan sejumlah dana yang di buka oleh importer untuk seorang eksportir';
    image = 'assets/udara.jpeg';
  }
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: new Image.asset(
              'assets/sign.jpg',
              width: size.width,
              height: size.height,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: BackdropFilter(
              filter: prefix0.ImageFilter.blur(sigmaX: 5, sigmaY: 6),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                )
              ),
            ),
          ),
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      
                      contents,
                      textAlign: TextAlign.center,
                      style: TextStyle( color: Colors.white),
                    ),
                  ),
                  
                  SizedBox(height: 100),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ButtonTheme(
                      buttonColor: Colors.amber,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Sales()));
                        },
                        child: Text(
                          "Mengerti",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 20),
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
