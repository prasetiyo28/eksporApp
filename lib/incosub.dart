import 'package:ekspor_apps/sales.dart';
import 'package:flutter/material.dart';

class IncoSub extends StatefulWidget {
  final String text;
  IncoSub({Key key, @required this.text}) : super(key: key);
  
  @override
  _IncoSubState createState() => _IncoSubState();
}

class _IncoSubState extends State<IncoSub> {
  
  
  @override
  
  
  Widget build(BuildContext context) {
  var text = widget.text;
  
  var title = '';
  var contents = '';
  if (text == 'EXW') {
    title = 'EXW - Ex Works';
    contents = 'Pihak penjual menentukan tempat pengambilan barang, Pihak pembeli bertanggung jawab untuk biaya angkut, resiko selama perjalanan dan biaya saat pembongkaran.';
  }else if(text == 'FCA'){
    title = 'FCA - Free Carrier ';
    contents = 'Pihak penjual hanya bertanggung jawab untuk mengurus izin ekspor dan meyerahkan barang ke pihak pengangkut di tempat yang telah ditentukan. Pihak pembeli hanya membayar biaya pengiriman dan tanggung jawab hangus saat barang di serahkan di pelabuhan tujuan.';
  }else if(text == 'CPT'){
    title = 'CPT - Carriage Paid To';
    contents = 'Pihak penjual menanggung biaya sampai barang tiba di tempat tujuan, namun tanggung jawab hanya sampai saat barang diserahkan ke pihak pengangkut.';
  }else if(text == 'CPT'){
    title = 'CPT - Carriage Paid To';
    contents = 'Pihak penjual menanggung biaya sampai barang tiba di tempat tujuan, namun tanggung jawab hanya sampai saat barang diserahkan ke pihak pengangkut.';
  }else if(text == 'CIP'){
    title = 'CIP - Carriage and Insurance Paid to';
    contents = 'Sama seperti CPT ditambah pihak penjual wajib membayar asuransi untuk barang yang dikirim hingga barang diserahkan.';
  }else if(text == 'CPT'){
    title = 'CPT - Carriage Paid To';
    contents = 'Pihak penjual menanggung biaya sampai barang tiba di tempat tujuan, namun tanggung jawab hanya sampai saat barang diserahkan ke pihak pengangkut.';
  }
  else if(text == 'CPT'){
    title = 'CPT - Carriage Paid To';
    contents = 'Pihak penjual menanggung biaya sampai barang tiba di tempat tujuan, namun tanggung jawab hanya sampai saat barang diserahkan ke pihak pengangkut.';
  }
  else if(text == 'DAT'){
    title = 'DAT – Delivered at Terminal';
    contents = 'Pihak penjual membayar sampai ke pembongkaran di terminal pelabuhan tujuan, kecuali beban biaya sehubungan biaya, tanggung jawab bebas saat kapal selesai bongkar di terminal pelabuhan tujuan.';
  }
  else if(text == 'DAP'){
    title = 'DAP – Delivered at Place';
    contents = 'Hampir sama sepertiDAT dengan tambahan biaya pengangkutan ke tempat tujuan dan asuransi menjadi tanggaungan pihak penjual';
  }
  else if(text == 'DDP'){
    title = 'DDP - Delivered Duty Paid';
    contents = 'Pihak penjual bertanggung jawab mengantar barang sampai di tempat tujuan, termasuk biaya asuransi dan semua biaya lain yang mungkin muncul sebagai biaya impor, cukai dan pajak dari negara pihak pembeli. Izin impor juga menjadi tanggung jawab pihak penjual.';
  }
  else if(text == 'FAS'){
    title = 'FAS - Free Alongside Ship';
    contents = 'Pihak penjual bertanggung jawab sampai barang berada di pelabuhan keberangkatan dan siap disamping kapal untuk dimuat. Biaya lain samapai ke tempat tujuan akan menjadi tanggung jawab pihak pembeli. Hanya berlaku untuk transportasi air.';
  }
  else if(text == 'FOB'){
    title = 'FOB - Free On Board';
    contents = 'Pihak penjual bertanggung jawab dari mengurus izin ekspor sampai memuat barang di kapal yang siap berangkat. Biaya pengangkutan dari pelabuhan asal samapi ke tempat tujuan akan menjadi tanggungan pembeli. Hanya berlaku untuk transportasi air.';
  }
  else if(text == 'CFR'){
    title = 'CFR - Cost and Freight';
    contents = 'pihak penjual menanggung biaya sampai kapal yang memuat barang merapat di pelabuhan tujuan, namun tanggung jawab penjual hanya sampai saat barang selesai di muat ke kapal. Hanya berlaku untuk transportasi air.';
  }
  else{
    title = 'CIF - Cost, Insurance and Freight';
    contents = 'Sama seperti CFR ditambah pihak penjual wajib membayar asuransi untuk barang yang dikirim. Hanya berlaku untuk transportasi air.';
  }
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        // drawer: Drawer(
        //     child: ListView(
        //   children: <Widget>[
        //     Row(
        //       children: <Widget>[Icon(Icons.calendar_today), Text("Simulasi")],
        //     ),
        //     Divider(),
        //     Row(
        //       children: <Widget>[
        //         Icon(
        //           Icons.calendar_today,
        //         ),
        //         Text("Incoterms"),
        //       ],
        //     ),
        //     Divider(),
        //     Row(
        //       children: <Widget>[
        //         Icon(
        //           Icons. calendar_today,
        //         ),
        //         Text("Pembayaran"),
        //       ],
        //     ),
        //     Divider(),
        //     Row(
        //       children: <Widget>[
        //         Icon(
        //           Icons.calendar_today,
        //         ),
        //         Text("Dokumen"),
        //       ],
        //     ),
        //     Divider(),
        //     Row(
        //       children: <Widget>[
        //         Icon(
        //           Icons.calendar_today,
        //         ),
        //         Text("FTA"),
        //       ],
        //     ),
        //     Divider(),
        //     Row(
        //       children: <Widget>[
        //         Icon(
        //           Icons.calendar_today,
        //         ),
        //         Text("Exit"),
        //       ],
        //     )
        //   ],
        // )),
        appBar: AppBar(
          backgroundColor: Colors.orange,
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
              child: Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(contents ,textAlign: TextAlign.center,),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ButtonTheme(
                buttonColor: Colors.orange,
                shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                              child: RaisedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Sales()));
                },child: Text("Mengerti" , style: TextStyle(fontSize: 20,color: Colors.white),),),
              ),
            )
           
          ],
        )));
  }
}


