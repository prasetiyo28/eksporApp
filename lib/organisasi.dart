import 'package:ekspor_apps/selamat.dart';
import 'package:flutter/material.dart';
class Organisasi extends StatefulWidget {
  final String text;
  Organisasi({Key key, @required this.text}) : super(key: key);
  @override
  _OrganisasiState createState() => _OrganisasiState();
}

class _OrganisasiState extends State<Organisasi> {
  
  @override
  Widget build(BuildContext context) {
    var text = widget.text;
  
  var title = '';
  var contents = '';
  var image = '';
  if (text == 'AFTA') {
    title = 'ASEAN Free Trade Area (AFTA)';
    contents = 'AFTA adalah singkatan dari ASEAN Free Trade Area (AFTA) yakni wujud dari kesepakatan negara-negara ASEAN yang tergabung untuk membentuk suatu kawasan yang bebas perdagangan.';
    image = 'assets/AFTA.png';
  }else if(text == 'ACFTA'){
    title = 'ASEAN China Free Trade Area (ACFTA)';
    contents = 'ACFTA adalah suatu kawasan perdagangan bebas di antara anggota-anggota ASEAN dan Cina.';
    image = 'assets/ACFTA.jpg';
  }else if(text == 'IJEPA'){
    title = 'Indonesia Japan Economic Partnership Agreement (IJEPA)';
    contents = 'Indonesia Japan Economic Partnership Agreement (IJEPA) adalah perjanjian kerja sama ekonomi Indonesia - Jepang yang berlaku sejak 1 Juli 2008.';
    image = 'assets/IJEPA.jpg';
  }else if(text == 'IJEPA'){
    title = 'Indonesia Japan Economic Partnership Agreement (IJEPA)';
    contents = 'Indonesia Japan Economic Partnership Agreement (IJEPA) adalah perjanjian kerja sama ekonomi Indonesia - Jepang yang berlaku sejak 1 Juli 2008.';
    image = 'assets/IJEPA.jpg';
  }else if(text == 'AKFTA'){
    title = 'Asean-Korea Free Trade Area (AKFTA)';
    contents = 'Asean-Korea Free Trade Area (AKFTA) merupakan kesepakatan antara negara- negara anggota Association of Southeast Asian Nations (ASEAN) dengan Korea Selatan untuk mewujudkan kawasan perdagangan bebas dengan menghilangkan atau mengurangi hambatanhambatan perdagangan barang baik tarif ataupun non tarif';
    image = 'assets/AKFTA.jpg';
  }else if(text == 'IEU-CEPA'){
    title = 'Indonesia European Union Comprehensive Economic Partnership Agreement (IEU-CEPA )';
    contents = 'Indonesia European Union Comprehensive Economic Partnership Agreement (IEU-CEPA) adalah sebuah perjanjian perdagangan bebas antara Indonesia dan Uni Eropa yang membahas berbagai aspek hubungan ekonomi secara menyeluruh';
    image = 'assets/belanda.jpg';
  }else if(text == 'IPPTA'){
    title = 'Indonesia-Pakistan Preferential Trade Agreement (IPPTA)';
    contents = 'Indonesia-Pakistan Preferential Trade Agreement (IPPTA) merupakan implementasi dari Framework Agreement on Comprehensive Economic Partnership (FACEP) Indonesia-Pakistan yang ditandatangani kedua Menteri Perdagangan pada 24 November 2005, sebagai langkah awal dalam mencapai kesepakatan Comprehensive Economic Partnership (CEP) yang menjadi tujuan akhir.';
    image = 'assets/pakistan.jpg';
  }else if(text == 'AIFTA'){
    title = 'AIFTA (ASEAN India Free Trade Area)';
    contents = 'AIFTA (ASEAN India Free Trade Area) adalah kawasan perdagangan bebas antara sepuluh anggota Perhimpunan Bangsa-bangsa Asia Tenggara (ASEAN) dan India. Perjanjian kerangka kerja awal ditandatangani pada 8 Oktober 2003 di Bali, Indonesia';
    image = 'assets/india.jpg';
  }
  else{
     title = 'ASEAN-Australia-New Zealand Free Trade Area (AANZFTA)';
    contents = 'ASEAN-Australia-New Zealand Free Trade Area (AANZFTA) merupakan FTA regional yang bersifat komprehensif dan menggunakan pendekatan yang memberlakukan prinsip nothing is agreed until everything is agreed.  Perjanjian AANZFTA membuka dan menciptakan peluang baru bagi sekitar 663 juta masyarakat ASEAN, Australia dan Selandia Baru.';
    image = 'assets/australia.jpeg';
  }
    return Scaffold(
        drawer: Drawer(
            child: ListView(
          children: <Widget>[
            
            Row(
              children: <Widget>[Icon(Icons.calendar_today), Text("Simulasi")],
            ),
            Divider(),
            Row(children: <Widget>[
              Icon(Icons.calendar_today,),
              Text("Incoterms"),

            ],),
            Divider(),
            Row(children: <Widget>[
              Icon(Icons.calendar_today,),
              Text("Pembayaran"),

            ],),
            Divider(),
            Row(children: <Widget>[
              Icon(Icons.calendar_today,),
              Text("Dokumen"),

            ],),
            Divider(),
            Row(children: <Widget>[
              Icon(Icons.calendar_today,),
              Text("FTA"),

            ],),
            Divider(),
            Row(children: <Widget>[
              Icon(Icons.calendar_today,),
              Text("Exit"),

            ],)

          ],
        )),
        appBar: AppBar(
          title: Text("Perjanjian Dagang"),
        ),
        body: Container(child: Column(

          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50,right: 30,left: 30),
              child: Image.asset(image,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title, textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(contents,textAlign: TextAlign.center,),
            ),
            SizedBox(height: 50,),
            RaisedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Selamat()));
            },child: Text("Mengerti"),)

          ],
        )
        ));
  }
}