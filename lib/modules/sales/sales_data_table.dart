import 'package:flutter/material.dart';
import 'package:kanakk_book/custom_widgets/custom_app_bar.dart';
import 'package:kanakk_book/modules/sales/add_sales.dart';


class SalesTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(enableBack: true,title: "Sales Table",trailering: IconButton(
        color: Colors.white,
        onPressed: (){
        Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddSales(),
                      ));
      }, icon: Icon(Icons.add)),),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,  // Allow horizontal scrolling
          child: DataTable(
            dividerThickness: 10,
            columns:  [
              DataColumn(label: Text('Date',style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.black,fontSize: 15),)),
              DataColumn(label: Text('Invoice No',style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.black,fontSize: 15))),
              DataColumn(label: Text('Sales',style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.black,fontSize: 15))),
              DataColumn(label: Text('Income',style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.black,fontSize: 15))),
              DataColumn(label: Text('Balance',style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.black,fontSize: 15))),
              DataColumn(label: Text('Total Balance',style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.black,fontSize: 15))),
            ],
            rows:  [
              for(int i=0;i<20;i++)
              DataRow(cells: [
                DataCell(Text('02-01')),
                DataCell(Text('INV001')),
                DataCell(Text('₹ 200')),
                DataCell(Text('₹ 150')),
                DataCell(Text('₹ 50')),
                DataCell(Text('₹ 150')),
              ]),
             
             
            ],
          ),
        ),
      ),
    );
  }
}
