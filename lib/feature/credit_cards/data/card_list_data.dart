import 'package:bank_dashboard/feature/credit_cards/model/card_list_model.dart';
import 'package:flutter/cupertino.dart';

abstract class CardListData {
  static const List<CardListModel> data = [
    CardListModel(
      cardType: "Secondary",
      bank: "DBL Bank",
      cardNumber: "**** **** 5600",
      namainCard: "William ",
      color: Color(0xff396AFF),
    ),
    CardListModel(
      cardType: "Secondary",
      bank: "BRC Bank",
      cardNumber: "**** **** 4300",
      namainCard: "Michel ",
      color: Color(0xffFF82AC),
    ),
    CardListModel(
      cardType: "Secondary",
      bank: "ABM Bank",
      cardNumber: "**** **** 7560",
      namainCard: "Edward ",
      color: Color(0xffFFBB38),
    ),
  ];
}
