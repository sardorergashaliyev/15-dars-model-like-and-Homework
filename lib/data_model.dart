import 'package:flutter/material.dart';

class DataModel {
  final Color color;
  final String name;
  final String time;
  final int price;
  final List avatars;
  final String discription;
  int status;

  DataModel({
    required this.status,
    required this.discription,
    required this.color,
    required this.avatars,
    required this.time,
    required this.name,
    required this.price,
  });
}
