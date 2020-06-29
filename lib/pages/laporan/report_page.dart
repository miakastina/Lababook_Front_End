import 'package:flutter/material.dart';
//import 'package:lababook/theme.dart';

class ReportPage extends StatefulWidget {
  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  var _selectedValue;

  var _categories;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        title: new DropdownButtonHideUnderline(
          child: DropdownButton(
            value: _selectedValue,
            items: _categories,
            hint: Text("Intisari Kelontong"),
            onChanged: (value) {
              setState(() {
                _selectedValue = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
