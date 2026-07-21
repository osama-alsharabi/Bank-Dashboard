import 'package:flutter/material.dart';

class CardListModel {
  final String cardType;
  final String bank;
  final String cardNumber;
  final String namainCard;
  final Color color;

  const CardListModel({
    required this.cardType,
    required this.bank,
    required this.cardNumber,
    required this.namainCard,
    required this.color,
  });
}
