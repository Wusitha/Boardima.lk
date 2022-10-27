/// Example of timeseries chart with a custom number of ticks
///
/// The tick count can be set by setting the [desiredMinTickCount] and
/// [desiredMaxTickCount] for automatically adjusted tick counts (based on
/// how 'nice' the ticks are) or [desiredTickCount] for a fixed tick count.
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class CustomMeasureTickCount extends StatelessWidget {
  // final List<charts.Series> seriesList;
  final List<charts.Series<dynamic, DateTime>> seriesList;
  final bool animate;

  CustomMeasureTickCount(this.seriesList, {required this.animate});

  /// Creates a [TimeSeriesChart] with sample data and no transition.
  factory CustomMeasureTickCount.withSampleData() {
    return new CustomMeasureTickCount(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }


  @override
  Widget build(BuildContext context) {
    return new charts.TimeSeriesChart(seriesList,
        animate: animate,

        /// Customize the measure axis to have 2 ticks,
        primaryMeasureAxis: new charts.NumericAxisSpec(
            tickProviderSpec:
            new charts.BasicNumericTickProviderSpec(desiredTickCount: 2)));
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<MyRow, DateTime>> _createSampleData() {
    final data = [
      new MyRow(new DateTime(2017, 9, 25), 1),
      new MyRow(new DateTime(2017, 9, 26), 2),
      new MyRow(new DateTime(2017, 9, 27), 3),
      new MyRow(new DateTime(2017, 9, 28), 3),
      new MyRow(new DateTime(2017, 9, 29), 3),
      new MyRow(new DateTime(2017, 9, 30), 4),
      new MyRow(new DateTime(2017, 10, 01), 5),
      new MyRow(new DateTime(2017, 10, 02), 6),
      new MyRow(new DateTime(2017, 10, 03), 6),
      new MyRow(new DateTime(2017, 10, 04), 6),
      new MyRow(new DateTime(2017, 10, 05), 8),
    ];

    return [
      new charts.Series<MyRow, DateTime>(
        id: 'Cost',
        domainFn: (MyRow row, _) => row.timeStamp,
        measureFn: (MyRow row, _) => row.cost,
        data: data,
      )
    ];
  }
}

/// Sample time series data type.
class MyRow {
  final DateTime timeStamp;
  final int cost;
  MyRow(this.timeStamp, this.cost);
}
