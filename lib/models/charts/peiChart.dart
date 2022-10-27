import 'package:flutter/material.dart';
import 'package:note_via/ui/adminPages/constants/style.dart';
import 'package:pie_chart/pie_chart.dart';

class PiChart extends StatelessWidget {
  final Map<String,double> dataMap;
  final List<Color> colorList=[Color(0xFFEDF138),Color(0xFF9E8441),Color(0xFFEECD57)];
  PiChart({required this.dataMap});
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
            Text("Facilities Diversity",style: TextStyle(color: Colors.grey[100],fontSize: 16),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Expanded(child: PieChart(
                dataMap: dataMap,
                animationDuration: Duration(milliseconds: 800),
                chartLegendSpacing: 20,
                chartRadius: MediaQuery.of(context).size.width / 3.2,
                colorList: colorList,
                initialAngleInDegree: 0,
                chartType: ChartType.ring,
                ringStrokeWidth: 25,
                legendOptions: LegendOptions(
                  showLegendsInRow: false,
                  legendPosition: LegendPosition.right,
                  showLegends: true,
                  legendTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[100],
                  ),
                ),
                chartValuesOptions: ChartValuesOptions(
                  showChartValueBackground: true,
                  showChartValues: true,
                  showChartValuesInPercentage: false,
                  showChartValuesOutside: false,
                  decimalPlaces: 1,
                ),
// gradientList: ---To add gradient colors---
// emptyColorGradient: ---Empty Color gradient---
              )),
            ),

          ],
        ),
      ),
    );
  }
}


