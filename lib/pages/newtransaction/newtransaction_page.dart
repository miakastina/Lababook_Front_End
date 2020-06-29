import 'package:flutter/material.dart';
import 'package:lababook/theme.dart';
import 'package:toggle_switch/toggle_switch.dart';
//import 'package:dropdownfield/dropdownfield.dart';

enum SingingCharacter { lunas, tdklunas }

class NewTransactionPage extends StatefulWidget {
  @override
  _NewTransactionPageState createState() => _NewTransactionPageState();
}

class _NewTransactionPageState extends State<NewTransactionPage> {
  var dateController = TextEditingController();

  var _selectedValue;

  var _categories;

  SingingCharacter _bayar = SingingCharacter.lunas;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 0),
          //child: DefaultTabController(
          //length: 2,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: MyColors.primaryColor,
              title: Text('Transaksi Baru'),
              leading: FlatButton(
                textColor: Colors.white,
                child: Icon(
                  Icons.arrow_back,
                ),
                onPressed: () => print('Back'),
              ),
              //elevation: 0,
              //backgroundColor: MyColors.primaryColor,
              // actions: <Widget>[],
              // bottom: TabBar(
              //     labelColor: MyColors.primaryColor,
              //     unselectedLabelColor: Colors.white,
              //     indicatorSize: TabBarIndicatorSize.label,
              //     indicator: BoxDecoration(
              //         borderRadius: BorderRadius.only(
              //             topLeft: Radius.circular(10),
              //             topRight: Radius.circular(10)),
              //         color: Colors.white),
              //     tabs: [
              //       Tab(
              //         child: Align(
              //           alignment: Alignment.center,
              //           child: Text("Pemasukan"),
              //         ),
              //       ),
              //       Tab(
              //         child: Align(
              //             alignment: Alignment.center,
              //             child: Text("Pengeluaran")),
              //       ),
              //     ]),
            ),
            body:
                //TabBarView(children: <Widget>[
                SingleChildScrollView(
              child: Stack(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, bottom: 25.0),
                        // child: Text('Basic toggle switch: ',
                        //     style: TextStyle(
                        //         fontWeight: FontWeight.bold, fontSize: 18.0)),
                      ),
                      ToggleSwitch(
                        minWidth: 150.0,
                        initialLabelIndex: 2,
                        activeBgColor: Colors.redAccent,
                        activeTextColor: Colors.white,
                        inactiveBgColor: Colors.grey,
                        inactiveTextColor: Colors.grey[900],
                        labels: ['Pemasukan', 'Penjualan'],
                        onToggle: (index) {
                          print('switched to : $index');
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, bottom: 25.0),
                        // child: Text('Basic toggle switch: ',
                        //     style: TextStyle(
                        //         fontWeight: FontWeight.bold, fontSize: 18.0)),
                      ),
                      // ListTile(
                      //     title: new TextField(
                      //   controller: dateController,
                      //   decoration: InputDecoration(
                      //       labelText: 'Date',
                      //       hintText: 'Pick a Date',
                      //       prefixIcon: InkWell(
                      //         onTap: () {},
                      //         child: Icon(Icons.calendar_today),
                      //       )),
                      // )),
                      ListTile(
                        trailing: IconButton(
                          icon: Icon(Icons.calendar_today),
                          tooltip: '',
                          onPressed: () {
                            showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2015),
                              lastDate: DateTime(2101),
                            );
                          },
                          // title: new TextField(
                          //   controller: dateController,
                          //   decoration: InputDecoration(
                          //       // labelText: 'Date',
                          //       hintText: 'Pick a Date',
                          //       prefixIcon: InkWell(
                          //         onTap: () {},
                          //          child: Icon(Icons.calendar_today),
                          //       )),
                          // )
                        ),
                        title: new TextField(
                          decoration: new InputDecoration(
                            hintText: 'Date',
                          ),
                        ),
                      ),
                      ListTile(
                        //leading: const Icon(Icons.business_center),
                        title: new DropdownButtonFormField(
                          value: _selectedValue,
                          items: _categories,
                          hint: Text("Belanja Supply"),
                          onChanged: (value) {
                            setState(() {
                              _selectedValue = value;
                            });
                          },
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                      ),
                      ListTile(
                          // leading: const Icon(Icons.person),
                          title: new TextField(
                        decoration: new InputDecoration(
                          hintText: "Kontak",
                        ),
                      )),
                      ListTile(
                          // leading: const Icon(Icons.person),
                          title: new TextField(
                        decoration: new InputDecoration(
                          hintText: "Nominal",
                        ),
                      )),
                      ListTile(
                          // leading: const Icon(Icons.person),
                          title: new TextField(
                        decoration: new InputDecoration(
                          hintText: "Biaya Produk",
                        ),
                      )),
                      ListTile(
                        leading: Radio(
                          // title: const Text('Lunas'),
                          // trailing: Radio(

                          groupValue: _bayar,
                          value: SingingCharacter.lunas,
                          onChanged: (SingingCharacter value) {
                            setState(() {
                              _bayar = value;
                            });
                          },

                          //),
                        ),
                        //leading: const Icon(Icons.business_center),
                        title: new DropdownButtonFormField(
                          value: _selectedValue,
                          items: _categories,
                          hint: Text("Bayar ?"),
                          onChanged: (value) {
                            setState(() {
                              _selectedValue = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                          title: const Text('Belum Lunas'),
                          leading: Radio(
                              value: SingingCharacter.tdklunas,
                              groupValue: _bayar,
                              onChanged: (SingingCharacter value) {
                                setState(() {
                                  _bayar = value;
                                });
                              })),
                      ListTile(
                          //leading: const Icon(Icons.calendar_today),
                          title: new TextField(
                        controller: dateController,
                        decoration: InputDecoration(
                            labelText: 'Date',
                            hintText: 'Pick a Date',
                            prefixIcon: InkWell(
                              onTap: () {},
                              child: Icon(Icons.calendar_today),
                            )),
                      )),
                      ListTile(
                        //leading: const Icon(Icons.font_download),
                        title: new TextField(
                          maxLines: 5,
                          decoration: InputDecoration(
                            hintText: "Catatan",
                          ),
                        ),
                      ),
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
                      // ListTile(
                      //   leading: Radio(
                      //       value: SingingCharacter.tdklunas,
                      //       groupValue: null,
                      //       onChanged: null),
                      //   //leading: const Icon(Icons.business_center),
                      //   // title: new DropdownButtonFormField(
                      //   //   value: _selectedValue,
                      //   //   items: _categories,
                      //   //   hint: Text("Paid Uang ?"),
                      //   //   onChanged: (value) {
                      //   //     setState(() {
                      //   //       _selectedValue = value;
                      //   //     });
                      //   //   },
                      //   // ),
                      // ),
                    ],
                  )
                ],
              ),
            ),
            // Text(""),
            // Text(""),
            //Icon(Icons.book),
            //Icon(Icons.book),
            // ]
          ),
        ),
      ),

      // body: SingleChildScrollView(
      //   child: Stack(
      //     children: <Widget>[
      //       DefaultTabController(length:
      //       2,
      //       child: Row(

      //       ))

      //     ],
      //   ),
      // )
    );
  }
}
