import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:kanakk_book/const/color_constants.dart';
import 'package:kanakk_book/const/enums.dart';
import 'package:kanakk_book/modules/dash_board.dart/elements/duration_filter.dart';
import 'package:kanakk_book/modules/dash_board.dart/main_dash_board.dart';

class SalesChart extends StatelessWidget {
  const SalesChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: ColorConstants.customGradient.withOpacity(.3),
        border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
         // spacing: 20,
          mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text("Sales chart",style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.black),),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 5,
                  children: [
                     ...Month.values.map((e)=>DurationFilter(title: e.name,isSelected: e==Month.Jan,))
                  ],
                ),
              ),
              SizedBox(height: 40,),
              SizedBox(
                height: 280,width: 500,
                child: BarChart(
                  BarChartData(
                    barTouchData: BarTouchData(
  touchTooltipData: BarTouchTooltipData(
    getTooltipColor: (c)=>Colors.transparent,
    getTooltipItem: (group, groupIndex, rod, rodIndex) {
      return BarTooltipItem(
        '₹ ${rod.toY.toStringAsFixed(0)} ', 
        const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      );
    },
  ),),
                    gridData: FlGridData(show: false),
                    borderData:  FlBorderData(
                      show: true,
                      border:  Border(
                        left: BorderSide(color: Colors.black,),
                        bottom: BorderSide(color: Colors.black,),
                      ),
                    ),
                    titlesData: FlTitlesData(
                      rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: true, reservedSize: 40),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) {
                            switch (value.toInt()) {
                              case 0:
                                return const Text("Week 1");
                              case 1:
                                return const Text("Week 2");
                              case 2:
                                return const Text("Week 3");
                              case 3:
                                return const Text("Week 4");
                              default:
                                return const Text("");
                            }
                          },
                        ),
                      ),
                    ),
                    barGroups: [
                      barData(0, 8000),
                      barData(1, 5000),
                      barData(2, 2000),
                      barData(3, 4000),
                    ],
                  ),
                ),
              ),
            
          ],
        ),
      ),
    );
  }
}