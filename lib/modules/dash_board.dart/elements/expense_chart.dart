import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:kanakk_book/const/color_constants.dart';
import 'package:kanakk_book/const/enums.dart';
import 'package:kanakk_book/modules/dash_board.dart/elements/duration_filter.dart';

class ExpenseChart extends StatelessWidget {
  const ExpenseChart({super.key});

  @override
  Widget build(BuildContext context) {
    final expenses = {
    "Diesel": 8000,
    "Salary": 5000,
    
    "Transport": 4000,
    "Tea": 2000,
  };

  final colors = [ColorConstants.primary, ColorConstants.primary.withOpacity(.7), ColorConstants.primary.withOpacity(.5), ColorConstants.primary.withOpacity(.3)];

    return SizedBox(
    height: 330,
    child: Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Expense chart",style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.black),),
            const SizedBox(height: 10),
            
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 5,
                  children: [
                     ...DurationValue.values.map((e)=>DurationFilter(title: e.name,isSelected: e==DurationValue.daily,))
                  ],
                ),
              ),
               SizedBox(height: 20,),
            Expanded(
              child: Row(
                children: [
                  // Pie Chart
                  Expanded(
                    child: PieChart(
                      PieChartData(
                        sections: _getPieChartSections(expenses, colors,context),
                        borderData: FlBorderData(show: false),
                        sectionsSpace: 4, // Space between sections
                        centerSpaceRadius: 40, // Space at the center
                      ),
                    ),
                  ),
                  // Legend
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(expenses.length, (index) {
                      return _buildLegendItem(colors[index], expenses.keys.elementAt(index));
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
  }
}

// Generates Pie Chart Sections with Values Inside
List<PieChartSectionData> _getPieChartSections(Map<String, int> expenses, List<Color> colors,BuildContext context) {
  return List.generate(expenses.length, (index) {
    final entry = expenses.entries.elementAt(index);
    return PieChartSectionData(
      color: colors[index],
      value: entry.value.toDouble(),

      title: "₹${entry.value}", // Show values inside chart
      radius: 70,
      titleStyle: Theme.of(context).textTheme.bodyMedium?.copyWith( color: Colors.white),
    );
  });
}

// Legend Widget (Color + Name)
Widget _buildLegendItem(Color color, String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0),
    child: Row(
      children: [
        Container(
          width: 16,
          height: 16,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(width: 8),
        Text(title, style: const TextStyle(fontSize: 14)),
      ],
    ),
  );
}
