import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lababook/theme.dart';

class RegisPage extends StatefulWidget {
  @override
  _RegisPageState createState() => new _RegisPageState();
}

class _RegisPageState extends State<RegisPage> {
  List<Step> steps = [
    Step(
      title: const Text(''),
      isActive: true,
      state: StepState.complete,
      content: Column(
        children: <Widget>[
          new Text(
            "Pilih Jenis Usaha Anda",
            style: new TextStyle(
              color: Colors.black,
              fontFamily: 'Roboto',
              fontSize: 29.0,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.none,
            ),
          ),
          new Row(children: <Widget>[
            new Expanded(
              flex: 1,
              child: new Column(children: <Widget>[
                IconButton(
                  icon: Image.asset('assets/img/component_7_1.png'),
                  iconSize: 150,
                  onPressed: () {},
                ),
                //Image.asset('assets/img/component_7_1.png'),
                new Text(
                  "",
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                  ),
                )
              ]),
            ),
            new Expanded(
              flex: 1,
              child: new Column(children: <Widget>[
                IconButton(
                  icon: Image.asset('assets/img/component_7_1.png'),
                  iconSize: 150,
                  onPressed: () {},
                ),
                //Image.asset('assets/img/component_7_1.png'),
                new Text(
                  "",
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                  ),
                )
              ]),
            ),
          ]),
          new Row(children: <Widget>[
            new Expanded(
              flex: 1,
              child: new Column(children: <Widget>[
                IconButton(
                  icon: Image.asset('assets/img/component_7_1.png'),
                  iconSize: 150,
                  onPressed: () {},
                ),
                //Image.asset('assets/img/component_7_1.png'),
                new Text(
                  "",
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                  ),
                )
              ]),
            ),
            new Expanded(
              flex: 1,
              child: new Column(children: <Widget>[
                IconButton(
                  icon: Image.asset('assets/img/component_7_1.png'),
                  iconSize: 150,
                  onPressed: () {},
                ),
                //Image.asset('assets/img/component_7_1.png'),
                new Text(
                  "",
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                  ),
                )
              ]),
            ),
          ])
          // Registrasi1Page(),
          // TextFormField(
          //   decoration: InputDecoration(labelText: 'Email Address'),
          // ),
          // TextFormField(
          //   decoration: InputDecoration(labelText: 'Password'),
          // ),
        ],
      ),
    ),
    Step(
      isActive: false,
      state: StepState.editing,
      title: const Text(''),
      content: Column(
        children: <Widget>[
          Container(),
          new Text(
            "Tolong isi deskripsi sepanjang teks ini",
            style: new TextStyle(
              //wordSpacing: 8,
              color: Colors.black,
              fontFamily: 'Roboto',
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.none,
            ),
          ),
          Container(
            width: 50.0,
            height: 50.0,
          ),
          new Row(children: <Widget>[
            new Expanded(
              flex: 1,
              child: new Column(children: <Widget>[
                Image.asset(
                  'assets/img/oval_72.png',
                  height: 200,
                  width: 200,
                ),
                new Text(
                  "",
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                  ),
                )
              ]),
            ),
            // new Expanded(
            //   flex: 1,
            //   child: new Column(children: <Widget>[
            //     Image.asset('assets/img/component_7_1.png'),
            //     new Text(
            //       "",
            //       style: new TextStyle(
            //         color: Colors.black,
            //         fontSize: 24.0,
            //         fontWeight: FontWeight.w500,
            //         decoration: TextDecoration.none,
            //       ),
            //     )
            //   ]),
            // ),
          ]),

          TextFormField(
            decoration: InputDecoration(labelText: 'Nama Toko Anda'),
          ),
          // TextFormField(
          //   decoration: InputDecoration(labelText: 'Postcode'),
          // ),
        ],
      ),
    ),
    Step(
      state: StepState.error,
      title: const Text(''),
      subtitle: const Text(""),
      content: Column(
        children: <Widget>[
          Container(
            width: 50.0,
            height: 50.0,
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                flex: 1,
                child: new Column(children: <Widget>[
                  Image.asset(
                    'assets/img/oval_72.png',
                    height: 200,
                    width: 200,
                  ),
                  Container(
                    width: 20.0,
                    height: 20.0,
                  ),
                  new Text(
                    "SELAMAT !",
                    style: new TextStyle(
                      color: Colors.black,
                      fontSize: 40.0,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  new Text(
                    "Akun anda berhasil didaftarkan",
                    style: new TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Container(
                    width: 50.0,
                    height: 50.0,
                  ),
                ]),
              ),
            ],
          ),
          // CircleAvatar(
          //   backgroundColor: Colors.red,
          // )
        ],
      ),
    ),
  ];

  StepperType stepperType = StepperType.horizontal;

  int currentStep = 0;
  bool complete = false;

  next() {
    currentStep + 1 != steps.length
        ? goTo(currentStep + 1)
        : setState(() => complete = true);
  }

  cancel() {
    if (currentStep > 0) {
      goTo(currentStep - 1);
    }
  }

  goTo(int step) {
    setState(() => currentStep = step);
  }

  switchStepType() {
    setState(() => stepperType == StepperType.horizontal
        ? stepperType = StepperType.vertical
        : stepperType = StepperType.horizontal);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: Text('Buat Akun'),
      ),
      body: Column(
        children: <Widget>[
          complete
              ? Expanded(
                  child: Center(
                    child: AlertDialog(
                      title: new Text("Profile Created"),
                      content: new Text(
                        "Selamat!",
                      ),
                      actions: <Widget>[
                        new FlatButton(
                          child: new Text("Close"),
                          onPressed: () {
                            setState(() => complete = false);
                          },
                        ),
                      ],
                    ),
                  ),
                )
              : Expanded(
                  child: Stepper(
                    type: stepperType,
                    steps: steps,
                    currentStep: currentStep,
                    onStepContinue: next,
                    onStepTapped: (step) => goTo(step),
                    onStepCancel: cancel,
                  ),
                ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.list),
        onPressed: switchStepType,
      ),
    );
  }
}
