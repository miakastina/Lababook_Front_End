import 'package:flutter/material.dart';

class Option {
  Icon icon;
  String title;
  String subtitle;

  Option({this.icon, this.title, this.subtitle});
}

final options = [
  Option(
    icon: Icon(Icons.swap_horiz, size: 40.0),
    title: 'Laporan Laba Rugi',
    subtitle: 'Lorem ipsum dolor sit amet, consect.',
  ),
  Option(
    icon: Icon(Icons.autorenew, size: 40.0),
    title: 'Laporan Arus Kas',
    subtitle: 'Lorem ipsum dolor sit amet, consect.',
  ),
  Option(
    icon: Icon(Icons.work, size: 40.0),
    title: 'Laporan Hutang',
    subtitle: 'Lorem ipsum dolor sit amet, consect.',
  ),
  // Option(
  //   icon: Icon(Icons.invert_colors, size: 40.0),
  //   title: 'Option Four',
  //   subtitle: 'Lorem ipsum dolor sit amet, consect.',
  // ),
  // Option(
  //   icon: Icon(Icons.watch_later, size: 40.0),
  //   title: 'Option Five',
  //   subtitle: 'Lorem ipsum dolor sit amet, consect.',
  // ),
  // Option(
  //   icon: Icon(Icons.fastfood, size: 40.0),
  //   title: 'Option Six',
  //   subtitle: 'Lorem ipsum dolor sit amet, consect.',
  // ),
  // Option(
  //   icon: Icon(Icons.local_airport, size: 40.0),
  //   title: 'Option Seven',
  //   subtitle: 'Lorem ipsum dolor sit amet, consect.',
  // ),
  // Option(
  //   icon: Icon(Icons.settings, size: 40.0),
  //   title: 'Option Eight',
  //   subtitle: 'Lorem ipsum dolor sit amet, consect.',
  // ),
];
