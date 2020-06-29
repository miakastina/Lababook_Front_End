import 'package:flutter/material.dart';
import 'package:lababook/theme.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors.primaryColor,
          title: Text('Akun '),
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
                height: 50,
                width: 50,
              ),
              Container(
                  constraints: const BoxConstraints(maxWidth: 500),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text:
                              'lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
                          style: TextStyle(color: MyColors.primaryColor)),
                      TextSpan(
                          text:
                              '. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                          style: TextStyle(color: MyColors.primaryColor)),
                    ]),
                  )),
              SizedBox(
                height: 20,
                width: 20,
              ),
              ClipRRect(
                //borderRadius: BorderRadius.circular(0.0),
                child: Image.asset(
                  "assets/img/name-card-backround.png",
                  //fit: BoxFit.cover,
                  height: 300.0,
                  width: 350.0,
                ),
              ),
              Container(height: 30, width: 30, child: Row()),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 20,
                        width: 20,
                      ),
                      Expanded(
                          child: FlatButton(
                        color: MyColors.primaryColor,
                        child: Text("Edit Data Saya"),
                        textColor: Colors.white,
                        onPressed: () {},
                      )),
                      Container(width: 25, height: 25),
                      Expanded(
                          child: FlatButton(
                        color: MyColors.primaryColor,
                        child: Text("Bagikan Kartu Nama Saya"),
                        textColor: Colors.white,
                        onPressed: () {},
                      )),
                      Container(
                        height: 20,
                        width: 20,
                      ),
                    ],
                  )
                ],
                // Row(children: <Widget>[

                //   // FlatButton(
                //   //   color: MyColors.primaryColor,
                //   //   child: Text("Edit Data Saya"),
                //   //   onPressed: () {},
                //   // ),
                //   // Container(
                //   //   height: 30,
                //   //   width: 30,
                //   // ),
                //   // FlatButton(
                //   //   color: MyColors.primaryColor,
                //   //   child: Text("Bagikan Kartu Nama Saya"),
                //   //   onPressed: () {},
                //   // ),
                // ]),
              ),
              ListTile(
                leading: SizedBox(),
              ),
            ],
          ),
        ])));
  }
}
