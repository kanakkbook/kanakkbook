import 'package:flutter/material.dart';
import 'package:kanakk_book/custom_widgets/custom_app_bar.dart';


class SalesTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
enableBack: true,title: "Sales table"),
      body: SingleChildScrollView(
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
          rows: const [
            DataRow(cells: [
              DataCell(Text('02-01')),
              DataCell(Text('INV001')),
              DataCell(Text('₹ 200')),
              DataCell(Text('₹ 150')),
              DataCell(Text('₹ 50')),
              DataCell(Text('₹ 150')),
            ]),
            DataRow(cells: [
              DataCell(Text('02-02')),
              DataCell(Text('INV002')),
              DataCell(Text('₹ 300')),
              DataCell(Text('₹ 250')),
              DataCell(Text('₹ 50')),
              DataCell(Text('₹ 400')),
            ]),
            DataRow(cells: [
              DataCell(Text('02-03')),
              DataCell(Text('INV003')),
              DataCell(Text('₹ 400')),
              DataCell(Text('₹ 350')),
              DataCell(Text('₹ 50')),
              DataCell(Text('₹ 750')),
            ]),
            DataRow(cells: [
              DataCell(Text('02-04')),
              DataCell(Text('INV004')),
              DataCell(Text('₹ 500')),
              DataCell(Text('₹ 450')),
              DataCell(Text('₹ 50')),
              DataCell(Text('₹ 1200')),
            ]),
          ],
        ),
      ),
    );
  }
}
