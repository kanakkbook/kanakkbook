import 'package:flutter/material.dart';
import 'package:kanakk_book/custom_widgets/common_data_table.dart';

class UserDetailsTableView extends StatelessWidget {
  const UserDetailsTableView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: CommonDataTable(
        data: [
          for(int i=0;i<10;i++)
          {"date":"12/01/2025","cash":'+ 200',"Basket":" - 800","salary":"+ 900","Diesal":"+ 1000","Others":
          Tooltip(
            message: "Tea - 200\nLunch - 300",
            child: Text("-400"),
          )
          , "Total":"200","balance":Text("1000",style: TextStyle(color: Colors.green),)}
        ],
      ),
    );
  }
}