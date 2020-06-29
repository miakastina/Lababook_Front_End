import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:lababook/theme.dart';

class EditAccountPage extends StatefulWidget {
  @override
  _EditAccountPageState createState() => _EditAccountPageState();
}

class _EditAccountPageState extends State<EditAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors.primaryColor,
          title: Text('Edit Akun'),
          leading: FlatButton(
            textColor: Colors.white,
            child: Icon(
              Icons.arrow_back,
            ),
            onPressed: () => print('Back'),
          ),
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
              ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.asset(
                  "assets/img/logo.png",
                  fit: BoxFit.cover,
                  height: 200.0,
                  width: 200.0,
                ),
              ),
              ListTile(
                  leading: const Icon(Icons.business),
                  title: new TextField(
                    decoration: new InputDecoration(
                      hintText: "Nama Usaha",
                    ),
                  )),
              ListTile(
                leading: const Icon(Icons.business_center),
                title: new DropDownField(
                  controller: usahaSelected,
                  hintText: "Jenis Usaha",
                  enabled: true,
                  items: usaha,
                  onValueChanged: (value) {
                    setState(() {});
                  },
                ),
              ),
              ListTile(
                leading: const Icon(Icons.font_download),
                title: new TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: "Tagline",
                  ),
                ),
              ),
              ListTile(
                  leading: const Icon(Icons.person),
                  title: new TextField(
                    decoration: new InputDecoration(
                      hintText: "Nama Anda",
                    ),
                  )),
              ListTile(
                  leading: const Icon(Icons.phone),
                  title: new TextField(
                    decoration: new InputDecoration(
                      hintText: "+6281234567890",
                    ),
                  )),
              ListTile(
                  leading: const Icon(Icons.home),
                  title: new TextField(
                    decoration: new InputDecoration(
                      hintText: "Kota/Kecamatan",
                    ),
                  )),
              ListTile(
                  leading: const Icon(Icons.local_post_office),
                  title: new TextField(
                    decoration: new InputDecoration(
                      hintText: "Kode Pos",
                    ),
                  )),
              ListTile(
                  leading: const Icon(Icons.add_location),
                  title: new TextFormField(
                    maxLines: 5,
                    decoration: new InputDecoration(
                      hintText: "Alamat Tempat Usaha",
                    ),
                  )),
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
