import 'package:flutter/material.dart';
import 'package:lababook/theme.dart';
import 'package:lababook/pages/contact/contact_data.dart';
//import 'package:flappy_search_bar/flappy_search_bar.dart';
//import 'package:flappy_search_bar/scaled_tile.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

//final items = List<String>.generate(10000, (i) => "Item $i");
TextEditingController editingController = TextEditingController();

class _ContactPageState extends State<ContactPage> {
  int _selectedOption = 0;
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
                Icons.add,
              ),
              onPressed: () => print('add'),
            ),
          ],
        ),
        body: Container(
            child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: TextField(
                onChanged: (value) {},
                controller: editingController,
                decoration: InputDecoration(
                    //labelText: "Search",
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
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
                      trailing: Text(
                        options[index - 1].numbers,
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
            )
          ],
        ))

        // body: SafeArea(
        //   child: Container(
        //     padding: const EdgeInsets.symmetric(horizontal: 20),
        //     child: Stack(
        //       children: <Widget>[
        //         SearchBar<Post>(
        //           onSearch: search,
        //           onItemFound: (Post post, int index) {
        //             return ListTile(
        //               title: Text(post.title),
        //               subtitle: Text(post.description),
        //             );
        //           },
        //         ),
        //         SingleChildScrollView(
        //           child: Stack(children: <Widget>[
        //             Column(
        //                 crossAxisAlignment: CrossAxisAlignment.center,
        //                 children: <Widget>[
        //                   SizedBox(
        //                     height: 100,
        //                     width: 100,
        //                   ),
        //                   ListTile(
        //                       //     leading: const Icon(Icons.business),
        //                       title: new TextField(
        //                     decoration: new InputDecoration(
        //                       hintText: "Nama Usaha",
        //                     ),
        //                   )),
        //                   ListTile(
        //                       //     leading: const Icon(Icons.business),
        //                       title: new TextField(
        //                     decoration: new InputDecoration(
        //                       hintText: "Nama Usaha",
        //                     ),
        //                   )),
        //                   ListTile(
        //                       //     leading: const Icon(Icons.business),
        //                       title: new TextField(
        //                     decoration: new InputDecoration(
        //                       hintText: "Nama Usaha",
        //                     ),
        //                   )),
        //                   ListTile(
        //                       //     leading: const Icon(Icons.business),
        //                       title: new TextField(
        //                     decoration: new InputDecoration(
        //                       hintText: "Nama Usaha",
        //                     ),
        //                   )),
        //                   ListTile(
        //                       //     leading: const Icon(Icons.business),
        //                       title: new TextField(
        //                     decoration: new InputDecoration(
        //                       hintText: "Nama Usaha",
        //                     ),
        //                   )),
        //                   ListTile(
        //                       //     leading: const Icon(Icons.business),
        //                       title: new TextField(
        //                     decoration: new InputDecoration(
        //                       hintText: "Nama Usaha",
        //                     ),
        //                   )),
        //                   ListTile(
        //                       //     leading: const Icon(Icons.business),
        //                       title: new TextField(
        //                     decoration: new InputDecoration(
        //                       hintText: "Nama Usaha",
        //                     ),
        //                   )),
        //                   ListTile(
        //                       //     leading: const Icon(Icons.business),
        //                       title: new TextField(
        //                     decoration: new InputDecoration(
        //                       hintText: "Nama Usaha",
        //                     ),
        //                   )),
        //                   ListTile(
        //                       //     leading: const Icon(Icons.business),
        //                       title: new TextField(
        //                     decoration: new InputDecoration(
        //                       hintText: "Nama Usaha",
        //                     ),
        //                   )),
        //                   ListTile(
        //                       //     leading: const Icon(Icons.business),
        //                       title: new TextField(
        //                     decoration: new InputDecoration(
        //                       hintText: "Nama Usaha",
        //                     ),
        //                   )),
        //                   ListTile(
        //                       //     leading: const Icon(Icons.business),
        //                       title: new TextField(
        //                     decoration: new InputDecoration(
        //                       hintText: "Nama Usaha",
        //                     ),
        //                   )),
        //                   ListTile(
        //                       //     leading: const Icon(Icons.business),
        //                       title: new TextField(
        //                     decoration: new InputDecoration(
        //                       hintText: "Nama Usaha",
        //                     ),
        //                   )),
        //                   ListTile(
        //                       //     leading: const Icon(Icons.business),
        //                       title: new TextField(
        //                     decoration: new InputDecoration(
        //                       hintText: "Nama Usaha",
        //                     ),
        //                   )),
        //                 ]),
        //           ]),
        //         )
        //       ],
        //     ),
        //   ),
        // )

        // SingleChildScrollView(
        //   child: Stack(),
        // )
        );
  }
}
