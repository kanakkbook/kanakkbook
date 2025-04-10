import 'package:flutter/material.dart';
import 'package:kanakk_book/models/home_card_model.dart';
import 'package:kanakk_book/modules/accounts/accounts_table.dart';
import 'package:kanakk_book/modules/cash_book.dart/cash_book_table.dart';
import 'package:kanakk_book/modules/dash_board.dart/main_dash_board.dart';
import 'package:kanakk_book/modules/sales/sales_data_table.dart';
import 'package:kanakk_book/modules/users_list/users_common_page.dart';

class HomeViewModel extends ChangeNotifier{
  List<HomeCardModel> homeWidgets=[
    HomeCardModel(uid: 001,name: "Dash Board",icon: Icons.dashboard_customize_outlined,screen: DashboardScreen()),
    HomeCardModel(uid: 002,name: "Sales",icon: Icons.shopping_cart_outlined,screen: SalesTable()),
    HomeCardModel(uid: 006,name: "Accounts",icon: Icons.account_balance_outlined,screen: AccountsTable()),
    HomeCardModel(uid: 003,name: "Customer",icon: Icons.switch_account_outlined,screen: Scaffold(body: UsersCommonPage())),
    HomeCardModel(uid: 005,name: "Suppliers",icon: Icons.supervisor_account_rounded,screen:  Scaffold(body: UsersCommonPage())),
    HomeCardModel(uid: 004,name: "Users",icon: Icons.people_outline,screen:Scaffold(body: UsersCommonPage())),
   
    HomeCardModel(uid: 007,name: "Cashbook",icon: Icons.receipt_long_sharp,screen: CashBookTable()),
    HomeCardModel(uid: 008,name: "Reports",icon: Icons.file_copy),
];
}