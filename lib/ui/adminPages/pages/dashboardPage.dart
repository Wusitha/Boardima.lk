import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_via/models/charts/barChart1.dart';
import 'package:note_via/models/charts/barChartSeries.dart';
import 'package:note_via/models/charts/barChart.dart';
import 'package:note_via/models/charts/peiChart.dart';
import 'package:note_via/models/charts/ringChart.dart';
import 'package:note_via/ui/adminPages/constants/style.dart';
import 'package:note_via/ui/adminPages/pages/dashboardWidget/advertising_success_chart.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:pie_chart/pie_chart.dart';
import 'package:pie_chart/pie_chart.dart';

class DashboardPage  extends StatelessWidget {
  final List<BarChartSeries> data=[
    BarChartSeries(month: "Jan", number: 2, barColor: charts.ColorUtil.fromDartColor(fontYellow)),
    BarChartSeries(month: "Feb", number: 0, barColor: charts.ColorUtil.fromDartColor(fontYellow)),
    BarChartSeries(month: "Mar", number: 1, barColor: charts.ColorUtil.fromDartColor(fontYellow)),
    BarChartSeries(month: "Apr", number: 0, barColor: charts.ColorUtil.fromDartColor(fontYellow)),
    BarChartSeries(month: "May", number: 1, barColor: charts.ColorUtil.fromDartColor(fontYellow)),
    BarChartSeries(month: "Jun", number: 0, barColor: charts.ColorUtil.fromDartColor(fontYellow)),
    BarChartSeries(month: "Jul", number: 2, barColor: charts.ColorUtil.fromDartColor(fontYellow)),
    BarChartSeries(month: "Aug", number: 1, barColor: charts.ColorUtil.fromDartColor(fontYellow)),
    BarChartSeries(month: "Sep", number: 1, barColor: charts.ColorUtil.fromDartColor(fontYellow)),
    BarChartSeries(month: "Oct", number: 2, barColor: charts.ColorUtil.fromDartColor(fontYellow)),];
  final List<BarChartSeries> data2=[
    BarChartSeries(month: "Jan", number: 0, barColor: charts.ColorUtil.fromDartColor(Color(0xFF9E8441))),
    BarChartSeries(month: "Feb", number: 1, barColor: charts.ColorUtil.fromDartColor(Color(0xFF9E8441))),
    BarChartSeries(month: "Mar", number: 1, barColor: charts.ColorUtil.fromDartColor(Color(0xFF9E8441))),
    BarChartSeries(month: "Apr", number: 0, barColor: charts.ColorUtil.fromDartColor(Color(0xFF9E8441))),
    BarChartSeries(month: "May", number: 1, barColor: charts.ColorUtil.fromDartColor(Color(0xFF9E8441))),
    BarChartSeries(month: "Jun", number: 3, barColor: charts.ColorUtil.fromDartColor(Color(0xFF9E8441))),
    BarChartSeries(month: "Jul", number: 0, barColor: charts.ColorUtil.fromDartColor(Color(0xFF9E8441))),
    BarChartSeries(month: "Aug", number: 3, barColor: charts.ColorUtil.fromDartColor(Color(0xFF9E8441))),
    BarChartSeries(month: "Sep", number: 0, barColor: charts.ColorUtil.fromDartColor(Color(0xFF9E8441))),
    BarChartSeries(month: "Oct", number: 5, barColor: charts.ColorUtil.fromDartColor(Color(0xFF9E8441))),];
  final Map<String,double> dataMap={"Hostels":25.0,"Annexes":35.5,"Boarding Rooms":39.5};
  final Map<String,double> dataMap1={"Success":10};
  @override
  Widget build(BuildContext context) {
    return Container(
      color: itemColor,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18,horizontal: 35),
                child: BarChart(data: data),
              ),
              SizedBox(width: 250,),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18,horizontal: 23),
                child: PiChart(dataMap: dataMap,),
              ),
            ],

          ),
          SizedBox(height: 2,),
          Row(
            children: [
              SizedBox(width: 270,),
              Container(
                height: 120,
                width: 180,
                child: Card(

                  color: navigationBarColor,
                    child:Column(
                  children: [
                    Text("Total Boarders",style:TextStyle(color: Colors.grey[100],fontSize: 20),),
                    Icon(Icons.supervised_user_circle,color:Colors.green.withOpacity(0.5),size: 50,),
                    Text("4",style: TextStyle(color: Colors.grey[100],fontSize: 26))
                  ],
                )),
              ),
              SizedBox(width: 80,),
              Container(
                height: 120,
                width: 180,
                child: Card(

                    color: navigationBarColor,
                    child:Column(
                      children: [
                        Text("Total Boarding Owners",style:TextStyle(color: Colors.grey[100],fontSize: 16),),
                        Icon(Icons.bed_outlined,color:Colors.red.withOpacity(0.5),size: 50,),
                        Text("2",style: TextStyle(color: Colors.grey[100],fontSize: 26))
                      ],
                    )),
              ),
              SizedBox(width: 80,),
              Container(
                height: 120,
                width: 180,
                child: Card(

                    color: navigationBarColor,
                    child:Column(
                      children: [
                        Text("Total Advertisements",style:TextStyle(color: Colors.grey[100],fontSize: 16),),
                        Icon(Icons.add_business_rounded,color:Colors.yellow.withOpacity(0.5),size: 50,),
                        Text("3",style: TextStyle(color: Colors.grey[100],fontSize: 26))
                      ],
                    )),
              ),
            ],


          ),
          SizedBox(height: 2,),
          Row(
            children: [
              SizedBox(width: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18,horizontal: 23),
                child: RingChart(dataMap: dataMap1),
              ),
              SizedBox(width: 250,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18,horizontal: 35),
                child: BarChart1(data: data2),
              ),

            ],


          ),

        ],
      ),

    );
    // return Column(
    //   children: [
    //     Expanded(child: BarChart(data: data))
    //
    //   ],
    // );

  }
}
