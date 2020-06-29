import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';

class Activity extends StatelessWidget {
  final List<String> entries = <String>[
    'Pemasukan Piutang',
    'Pemasukan Lunas',
    'Pengeluaran Piutang',
  ];
  final List<int> colorCodes = <int>[
    700,
    500,
    900,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 30,
            width: 10,
          ),
          FloatingActionButton.extended(
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text("Tambah transaksi"),
          ),
          Container(
            height: 30,
            width: 10,
          ),
          FloatingActionButton.extended(
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text("Tambah transaksi"),
          ),
          Container(
            height: 14,
            width: 10,
          ),
          Expanded(
              child: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 110,
                color: Colors.amber[colorCodes[index]],
                child: Center(child: Text(' ${entries[index]}')),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          ))
        ],
      ),
    );
  }
}
