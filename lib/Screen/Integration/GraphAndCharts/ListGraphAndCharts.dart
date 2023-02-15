import 'package:flutter/material.dart';

import 'BarGraphActivity.dart';
import 'ComboChartActivity.dart';
import 'DonutChartActivity.dart';
import 'GroupBarGraphActivity.dart';
import 'HorizontalBarChartActivity.dart';
import 'LineChartActivity.dart';
import 'PieChartActivity.dart';
import 'RtlLineChartActivity.dart';
import 'ScatterPlotChartActivity.dart';
import 'TimeSeriesChartActivity.dart';

class ListGraph extends StatefulWidget {
  ListGraph({Key? key}) : super(key: key);

  @override
  _ListGraphState createState() => _ListGraphState();
}

class _ListGraphState extends State<ListGraph> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "List Graph and Charts",
          style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w700),
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => BarGraphActivity()));
                },
                child: card("Bar Graph", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => GroupBarGraphActivity()));
                },
                child: card("Group Bar Graph", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) =>
                          HorizontalBarChartActivity()));
                },
                child: card("Horizontal Bar Graph", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => PieChartActivity()));
                },
                child: card("Pie Chart", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => DonutChartActivity()));
                },
                child: card("Donut Chart", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => LineChartActivity()));
                },
                child: card("Line Chart", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => TimeSeriesChartActivity()));
                },
                child: card("Time Series Chart", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => RtlLineChartActivity()));
                },
                child: card("Rtl Line Chart", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ScatterPlotChartActivity()));
                },
                child: card("Scatter Plot Chart", Color(0xFF47597E))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => ComboChartActivity()));
                },
                child: card("Combo Chart", Color(0xFF47597E))),
          ],
        ),
      ),
    );
  }

  Widget card(String title, Color _colors) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                color: _colors,
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            child: Center(
              child: Image.asset(
                "assets/images/logo.png",
                height: 45.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Stack(
              children: [
                Container(
                  height: 90.0,
                  width: MediaQuery.of(context).size.width - 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12.withOpacity(0.03),
                            blurRadius: 10.0,
                            spreadRadius: 5.0)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 32.0, left: 19.0),
                    child: Text(
                      title,
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width - 145, top: 30.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: CircleAvatar(
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 14.0,
                        ),
                      ),
                      backgroundColor: _colors,
                      radius: 14.0,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
