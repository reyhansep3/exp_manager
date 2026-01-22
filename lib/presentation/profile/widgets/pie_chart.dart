import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

Widget pieChart(){
  return SizedBox(
    height: 220,
    child: PieChart(
      PieChartData(
        sections: _sections(),
        centerSpaceRadius: 50,
        sectionsSpace: 2,
        borderData: FlBorderData(show: false),
        pieTouchData: PieTouchData(
          
        )
      ),
    ),
  );
}

List<PieChartSectionData> _sections() {
  return [
    PieChartSectionData(
      value: 40,
      title: '40%',
      color: Colors.blue,
      radius: 60,
      titleStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
    PieChartSectionData(
      value: 30,
      title: '30%',
      color: Colors.green,
      radius: 60,
      titleStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
    PieChartSectionData(
      value: 20,
      title: '20%',
      color: Colors.orange,
      radius: 60,
      titleStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
    PieChartSectionData(
      value: 10,
      title: '10%',
      color: Colors.red,
      radius: 60,
      titleStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  ];
}

class ChartCategory {
  final String label;
  final double value;
  final Color color;

  ChartCategory({
    required this.label,
    required this.value,
    required this.color,
  });
}

final List<ChartCategory> categories = [
  ChartCategory(label: 'Present', value: 60, color: Colors.green),
  ChartCategory(label: 'Late', value: 25, color: Colors.orange),
  ChartCategory(label: 'Absent', value: 15, color: Colors.red),
];