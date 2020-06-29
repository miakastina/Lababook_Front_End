import 'package:flutter/material.dart';
import 'package:lababook/theme.dart';

class SetupPage extends StatefulWidget {
  @override
  _SetupPageState createState() => _SetupPageState();
}

class _SetupPageState extends State<SetupPage> {
  var _selectedValue;

  var _categories;

  //int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new DropdownButtonHideUnderline(
            child: DropdownButton(
              value: _selectedValue,
              items: _categories,
              hint: Text("Lababook"),
              onChanged: (value) {
                setState(() {
                  _selectedValue = value;
                });
              },
            ),
          ),
        ),
        body: Stack(children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text('Setup',
                      style: TextStyle(
                          color: MyColors.primaryColor,
                          fontSize: 30,
                          fontWeight: FontWeight.w800))),
              Container(
                height: 30,
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Card(
                    child: IconButton(
                      icon: Image.asset('assets/img/icons8-user-100.png'),
                      iconSize: 120,
                      onPressed: () {},
                    ),
                  ),
                  Card(
                    child: IconButton(
                      icon: Image.asset('assets/img/icons8-categorize-100.png'),
                      iconSize: 120,
                      onPressed: () {},
                    ),
                  )
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Card(
                    child: IconButton(
                      icon: Image.asset('assets/img/icons8-crowd-100.png'),
                      iconSize: 120,
                      onPressed: () {},
                    ),
                  ),
                  Card(
                    child: IconButton(
                      icon: Image.asset('assets/img/icons8-settings-100.png'),
                      iconSize: 120,
                      onPressed: () {},
                    ),
                  )
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Card(
                    child: IconButton(
                      icon: Image.asset('assets/img/icons8-law-100.png'),
                      iconSize: 120,
                      onPressed: () {},
                    ),
                  ),
                  Card(
                    child: IconButton(
                      icon: Image.asset('assets/img/icons8-whatsapp-100.png'),
                      iconSize: 120,
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ],
          )
        ]));
  }
}
