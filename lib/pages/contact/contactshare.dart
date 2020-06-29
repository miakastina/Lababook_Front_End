//import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:lababook/theme.dart';

class ContactDetailPage extends StatefulWidget {
  @override
  _ContactDetailPageState createState() => _ContactDetailPageState();
}

class _ContactDetailPageState extends State<ContactDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors.primaryColor,
          title: Text('Kontak'),
          leading: FlatButton(
            textColor: Colors.white,
            child: Icon(
              Icons.arrow_back,
            ),
            onPressed: () => print('Back'),
          ),
          actions: <Widget>[
            FlatButton(
              textColor: Colors.white,
              child: Icon(
                Icons.share,
              ),
              onPressed: () => print('share'),
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Stack(children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 5,
                width: 5,
              ),
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(50.0),
              //   child: Image.asset(
              //     "assets/img/logo.png",
              //     fit: BoxFit.cover,
              //     height: 200.0,
              //     width: 200.0,
              //   ),
              // ),
              ListTile(
                  // leading: const Icon(Icons.business),
                  title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Nama ",
                ),
              )),
              ListTile(
                  // leading: const Icon(Icons.business),
                  title: new TextField(
                decoration: new InputDecoration(
                  hintText: "PT. ",
                ),
              )),
              // ListTile(
              //   // leading: const Icon(Icons.business_center),
              //   title: new DropDownField(
              //     controller: usahaSelected,
              //     hintText: "PT.",
              //     enabled: true,
              //     items: usaha,
              //     onValueChanged: (value) {
              //       setState(() {});
              //     },
              //   ),
              // ),
              ListTile(
                leading: const Icon(Icons.font_download),
                title: new TextField(
                  //maxLines: 5,
                  decoration: InputDecoration(
                    hintText: "Tagline",
                  ),
                ),
              ),
              // ListTile(
              //     leading: const Icon(Icons.person),
              //     title: new TextField(
              //       decoration: new InputDecoration(
              //         hintText: "Nama Anda",
              //       ),
              //     )),
              ListTile(
                  // leading: const Icon(Icons.phone),
                  title: new TextField(
                decoration: new InputDecoration(
                  hintText: "No Telepon",
                ),
              )),
              ListTile(
                  //leading: const Icon(Icons.home),
                  title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Lokasi",
                ),
              )),
              ListTile(
                  // leading: const Icon(Icons.local_post_office),
                  title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Keterangan",
                ),
              )),
              // ListTile(
              //     leading: const Icon(Icons.add_location),
              //     title: new TextFormField(
              //       maxLines: 5,
              //       decoration: new InputDecoration(
              //         hintText: "Alamat Tempat Usaha",
              //       ),
              //     )),
              Container(
                height: 30,
                width: 30,
              ),

              FlatButton(
                color: MyColors.kShadowColor1,
                child: new Text("Simpan"),
                onPressed: () {
                  setState(() {});
                },
              ),
            ],
          ),
        ])));
  }
}

final usahaSelected = TextEditingController();

List<String> usaha = ["Pedagang", "Kantoran"];
