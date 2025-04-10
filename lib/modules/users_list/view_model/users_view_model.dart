import 'package:flutter/material.dart';
import 'package:kanakk_book/models/child_card_model.dart';

class UsersViewModel extends ChangeNotifier{
List<ChildCardModel> summaryDate=[
  ChildCardModel(title: "Total",subtitle: "680"),
  ChildCardModel(title: "Sales",subtitle: "500"),
  ChildCardModel(title: "Diesal",subtitle: "800"),
  ChildCardModel(title: "Tea",subtitle: "600"),
  ChildCardModel(title: "Salary",subtitle: "700")
];

}