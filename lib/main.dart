import 'package:flutter/material.dart';

//import 'package:lababook/pages/home_page.dart';
//import 'package:lababook/pages/login_page.dart';
//import 'package:lababook/pages/otp_page.dart';
//import 'package:lababook/pages/splash_page.dart';
//import 'package:lababook/pages/dashboard.dart';
//import 'package:lababook/pages/activity.dart';
//import 'package:lababook/new_transaction.dart';
//import 'package:lababook/pages/contact/contact_page.dart';
//import 'package:lababook/pages/newtransaction/newtransaction_page.dart';
//import 'package:lababook/pages/account/edit_account.dart';
import 'package:lababook/pages/more/setup_page.dart';
//import 'package:lababook/pages/setting/setting_page.dart';
//import 'package:lababook/pages/setting/format_page.dart';
//import 'package:lababook/pages/setting/add_language.dart';
//import 'package:lababook/pages/contact/contact_page.dart';
//import 'package:lababook/pages/contact/contactpiutang.dart';
//import 'package:lababook/pages/account/account_page.dart';
//import 'package:lababook/pages/account/edit_account.dart';
//import 'package:lababook/pages/notification/notification_page.dart';
//import 'package:lababook/pages/category/category_page.dart';
//import 'package:lababook/pages/laporan/report_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LABABOOK',
      // theme: ThemeData(

      //   primarySwatch: Colors.blue,

      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      home:
          //HomePage(),
          //LoginPage(),
          //OtpPage(),
          //SplashPage(),
          //DashBoard(),
          //Activity(),
          //NewTransactionPage(),
          //ContactPage(),
          //EditAccountPage(),
          SetupPage(),
      // SettingPage(),
      //FormatPage(),
      // AddLanguagePage(),
      // ContactPage(),
      // ContactPiutangPage(),
      //AccountPage(),
      //EditAccountPage(),
      //NotificationPage(),
      //CategoryPage(),
      //ReportPage(),
    );
  }
}
