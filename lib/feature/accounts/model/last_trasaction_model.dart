import 'package:flutter/material.dart';

class LastTrasactionModel {
  final String image;
  final Color color;
  final String title;
  final String date;
  final String type;
  final String cardNumber;
  final String status;
  final String amount;
  final bool isDisposed;

  LastTrasactionModel({
    required this.image,
    required this.color,
    required this.title,
    required this.date,
    required this.type,
    required this.cardNumber,
    required this.status,
    required this.amount,
    required this.isDisposed,
  });
}
