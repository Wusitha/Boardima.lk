import 'package:flutter/material.dart';
import 'package:note_via/ui/adminPages/constants/style.dart';
import 'package:pie_chart/pie_chart.dart';

class RingChart extends StatelessWidget {
  final Map<String,double> dataMap;
  final List<Color> colorList=[Colors.yellowAccent];
  RingChart({required this.dataMap});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 400,
      color: navigationBarColor,
      child: Card(
        color: navigationBarColor,
        child: Column(
          children: [
            Text("Number of Advertisements in Months",style: TextStyle(color: Colors.grey[100],fontSize: 16),),
            Expanded(child: PieChart(
              dataMap: dataMap,
              chartType: ChartType.ring,
              baseChartColor: Colors.grey[50]!.withOpacity(0.15),
              colorList: colorList,
              chartValuesOptions: ChartValuesOptions(
                showChartValuesInPercentage: true
              ),
              totalValue: 30,
              legendOptions: LegendOptions(
                showLegendsInRow: false,
                legendPosition: LegendPosition.right,
                showLegends: true,
                legendTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[100],
                ),
              ),


              ),
            )

          ],
        ),
      ),
    );
  }
}


