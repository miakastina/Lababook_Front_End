import 'package:flutter/material.dart';
import 'package:lababook/theme.dart';

enum SingingCharacter { indonesia, inggris }

class AddLanguagePage extends StatefulWidget {
  AddLanguagePage({Key key}) : super(key: key);

  @override
  _AddLanguagePageState createState() => _AddLanguagePageState();
}

class _AddLanguagePageState extends State<AddLanguagePage> {
  SingingCharacter _bahasa = SingingCharacter.indonesia;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: Text("Pilih Bahasa Antar"),
      ),
      body: Column(children: <Widget>[
        ListTile(
          title: const Text('Bahasa Indonesia'),
          leading: Radio(
            groupValue: _bahasa,
            value: SingingCharacter.indonesia,
            onChanged: (SingingCharacter value) {
              setState(() {
                _bahasa = value;
              });
            },
          ),
        ),
        ListTile(
            title: const Text('Bahasa Inggris'),
            leading: Radio(
                value: SingingCharacter.inggris,
                groupValue: _bahasa,
                onChanged: (SingingCharacter value) {
                  setState(() {
                    _bahasa = value;
                  });
                })),
        Container(
          height: 30,
          width: 30,
        ),
        ListTile(
          title: const Text(
              'Perubahan bahasa tidak merubah tampilan format angka, tanggalan dan format lainnya.'),
        )
      ]),
      bottomSheet: Container(
        width: double.infinity,
        height: 80.0,
        // color: Color(0xFFF3F3F3),
        child: Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              FlatButton(
                color: MyColors.kRedColor,
                child: new Text("Batal"),
                onPressed: () {
                  setState(() {});
                },
              ),
              Container(
                height: 15,
                width: 15,
              ),
              FlatButton(
                color: MyColors.primaryColor,
                child: new Text("Ubah Bahasa"),
                onPressed: () {
                  setState(() {});
                },
              ),

              // Text(
              //   'SAVE & CONTINUE',
              //   style: TextStyle(
              //     color: Colors.black,
              //     fontSize: 18.0,
              //   ),
              // ),
              // SizedBox(width: 8.0),
              // Icon(
              //   Icons.arrow_forward_ios,
              //   color: Colors.black,
              //   size: 18.0,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
