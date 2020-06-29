import 'package:flutter/material.dart';
import 'package:lababook/theme.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:lababook/pages/contact/piutang_data.dart';

class ContactPiutangPage extends StatefulWidget {
  @override
  _ContactPiutangPageState createState() => _ContactPiutangPageState();
}

class _ContactPiutangPageState extends State<ContactPiutangPage> {
  int _selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors.primaryColor,
          title: Text('Nama Piutang'),
          leading: FlatButton(
            textColor: Colors.white,
            child: Icon(
              Icons.arrow_back,
            ),
            onPressed: () => print('Back'),
          ),
        ),
        body: SafeArea(
          // child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(children: <Widget>[
              Expanded(
                  flex: 2,
                  child: Column(
                    children: <Widget>[
                      SfRadialGauge(
                        axes: <RadialAxis>[
                          RadialAxis(
                              minimum: 0,
                              maximum: 150,
                              interval: 10,
                              ranges: <GaugeRange>[
                                GaugeRange(
                                    startValue: 0,
                                    endValue: 50,
                                    color: Colors.green),
                                GaugeRange(
                                    startValue: 50,
                                    endValue: 100,
                                    color: Colors.orange),
                                GaugeRange(
                                    startValue: 100,
                                    endValue: 150,
                                    color: Colors.red),
                              ],
                              pointers: <GaugePointer>[
                                NeedlePointer(value: 90, enableAnimation: true)
                              ])
                        ],
                      ),
                      FlatButton(
                        color: MyColors.kShadowColor1,
                        child: new Text("Tambah Pembayaran "),
                        onPressed: () {
                          setState(() {});
                        },
                      ),
                      Expanded(
                          child: Row(
                        children: <Widget>[
                          Text('Daftar Piutang'),
                        ],
                      ))
                    ],
                  )),
              Expanded(
                child: ListView.builder(
                  itemCount: options.length + 2,
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {
                      return SizedBox(height: 15.0);
                    } else if (index == options.length + 1) {
                      return SizedBox(height: 100.0);
                    }
                    return Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(10.0),
                      width: double.infinity,
                      height: 80.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        border: _selectedOption == index - 1
                            ? Border.all(color: Colors.black26)
                            : null,
                      ),
                      child: ListTile(
                        // leading: options[index - 1].number,
                        title: Text(
                          options[index - 1].title,
                          style: TextStyle(
                            color: _selectedOption == index - 1
                                ? MyColors.primaryColor
                                : Colors.grey[600],
                          ),
                        ),
                        subtitle: Text(
                          options[index - 1].subtitle,
                          style: TextStyle(
                            color: _selectedOption == index - 1
                                ? MyColors.primaryColor
                                : Colors.grey,
                          ),
                        ),
                        // number: Text(
                        //   options[index - 1].number,
                        //   style: TextStyle(
                        //     color: _selectedOption == index - 1
                        //         ? Colors.black
                        //         : Colors.grey,),
                        // ),
                        selected: _selectedOption == index - 1,
                        onTap: () {
                          setState(() {
                            _selectedOption = index - 1;
                          });
                        },
                      ),
                    );
                  },
                ),
                //     ListView.builder(
                // //       // shrinkWrap: true,
                // //       // itemCount: items.length,
                //         itemBuilder: (context, index) {
                // //       //   return ListTile(
                // //       //     title: Text('${items[index]}'),
                // //       //   );
                //  },
                //       ),
              ),
            ]),
          ),
        )
        //)
        );
  }
}
