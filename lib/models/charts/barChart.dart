import 'package:flutter/material.dart';
import 'package:note_via/models/charts/barChartSeries.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:note_via/ui/adminPages/constants/style.dart';

class BarChart extends StatelessWidget {

  final List<BarChartSeries> data;
  BarChart({required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarChartSeries,String>> series=
        [
          charts.Series(
              id: "Users",
              data: data,
            domainFn: (BarChartSeries series,_)=>series.month,
            measureFn: (BarChartSeries series,_)=>series.number,
            colorFn: (BarChartSeries series,_)=>series.barColor,

          )

        ];

    return Container(
      height: 250,
      width: 400,
      color: navigationBarColor,
     child: Card(
       color: navigationBarColor,
       child: Column(
         children: [
           Text("Number of Advertisements in Months",style: TextStyle(color: Colors.grey[100],fontSize: 16),),
           Expanded(child: charts.BarChart(series,animate: true,)),

         ],
       ),
     ),
    );
    // return charts.BarChart(series,animate: true,);
  }
}
