import 'package:flutter/material.dart';

class Option {
  Icon icon;
  String title;
  String subtitle;

  Option({this.icon, this.title, this.subtitle});
}

final options = [
  Option(
    icon: Icon(Icons.language, size: 40.0),
    title: 'Bahasa dan Format',
    subtitle: 'Lorem ipsum dolor sit amet, consect.',
  ),
  Option(
    icon: Icon(Icons.lock, size: 40.0),
    title: 'Verifikasi',
    subtitle: 'Lorem ipsum dolor sit amet, consect.',
  ),
  // Option(
  //   icon: Icon(Icons.account_circle, size: 40.0),
  //   title: 'Option Three',
  //   subtitle: 'Lorem ipsum dolor sit amet, consect.',
  // ),
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