import 'package:flutter/material.dart';
import 'package:kanakk_book/models/home_card_model.dart';
import 'package:kanakk_book/modules/sales/sales_data_table.dart';
import 'package:kanakk_book/modules/transactions/transaction_table_view.dart';

class HomeViewModel extends ChangeNotifier{
  List<HomeCardModel> homeWidgets=[
    HomeCardModel(uid: 001,name: "Dash Board",icon: Icons.dashboard_customize_outlined,),
    HomeCardModel(uid: 002,name: "Sales",icon: Icons.shopping_cart_outlined,screen: SalesTable()),
    HomeCardModel(uid: 003,name: "Customer",icon: Icons.switch_account_outlined),
    HomeCardModel(uid: 004,name: "Transactions",icon: Icons.payments_outlined,screen: TransactionTableView()),
    HomeCardModel(uid: 005,name: "Suppliers",icon: Icons.supervisor_account_rounded),
    HomeCardModel(uid: 006,name: "Accounts",icon: Icons.account_balance_outlined),
    HomeCardModel(uid: 007,name: "statements",icon: Icons.receipt_long_sharp),
    HomeCardModel(uid: 008,name: "Reports",icon: Icons.file_copy),
];
}