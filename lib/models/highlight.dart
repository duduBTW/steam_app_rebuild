import 'package:flutter/cupertino.dart';

enum EnumOperatingSystems { windows, mac, linux }

class Highlight {
  final String cover;
  final String title;
  final List<EnumOperatingSystems> operatingSystems;
  final double price;

  Highlight(
      {required this.cover,
      required this.title,
      required this.operatingSystems,
      required this.price});
}
