import 'package:flutter/material.dart';
import 'package:kanakk_book/const/color_constants.dart';

class CommonDataTable extends StatelessWidget {
  final List<Map<String, dynamic>>? data;

  const CommonDataTable({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    // Extract column headers from the first row of data
    final columns = data?.firstOrNull?.keys.toList() ?? [];

    return DataTable(
      dataRowHeight: 35,
      headingRowHeight: 35,
      border: TableBorder.all(
        color: ColorConstants.extraLightGrey,
        borderRadius: BorderRadius.circular(5),
      ),
      columns: [
        for (var key in columns)
          DataColumn(
            label: Text(
              key.toString(),
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.black,
                  ),
            ),
          ),
      ],
      rows: [
        if (data != null)
          for (var row in data!) // Iterate over each row in data
            DataRow(
              cells: [
                for (var key in columns) // Ensure each row has the same number of cells as headers
                  DataCell(
                    row[key] is Widget?  row[key]
                        : Text(row[key].toString())
                        
                  ),
              ],
            ),
      ],
    );
  }
}
