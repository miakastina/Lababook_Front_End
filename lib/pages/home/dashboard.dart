import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashBoard extends StatelessWidget {
  final List<int> cards = [
    1,
    2,
  ];

  final List<int> baners = [
    1,
    2,
    3,
    4,
    5,
  ];

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 900];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            height: MediaQuery.of(context).size.height * 0.35,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cards.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Card(
                      color: Colors.blue,
                      child: Container(
                        child: Center(
                            child: Text(
                          cards[index].toString(),
                          style: TextStyle(color: Colors.white, fontSize: 36.0),
                        )),
                      ),
                    ),
                  );
                }),
          ),
          Container(
            height: 2,
            //width: 10,
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
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
            height: MediaQuery.of(context).size.height * 0.20,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: baners.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Card(
                      color: Colors.blue,
                      child: Container(
                        child: Center(
                            child: Text(
                          baners[index].toString(),
                          style: TextStyle(color: Colors.white, fontSize: 36.0),
                        )),
                      ),
                    ),
                  );
                }),
          ),
          Expanded(
              flex: 2,
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
