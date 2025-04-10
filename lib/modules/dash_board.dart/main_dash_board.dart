import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:kanakk_book/const/color_constants.dart';
import 'package:kanakk_book/custom_widgets/custom_app_bar.dart';
import 'package:kanakk_book/modules/dash_board.dart/elements/expense_chart.dart';
import 'package:kanakk_book/modules/dash_board.dart/elements/sales_chart.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title:"Dashboard",enableBack: true,),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SalesChart(),
          
             ExpenseChart(),
              
            ],
          ),
        ),
      ),
    );
  }

 
  

  
}
BarChartGroupData barData(int x, double value) {
    return BarChartGroupData(x: x,
    
     barRods: [BarChartRodData(toY: value+1000,
    gradient: ColorConstants.twoGradient,
     color: ColorConstants.secondary,borderRadius: BorderRadius.circular(0), width: 16)]);
  }