import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../denver_bar_data.dart';




class DenverBarChartPS extends StatefulWidget {
  const DenverBarChartPS({super.key});

  @override
  State<DenverBarChartPS> createState() => _DenverBarChartPSState();
}

class _DenverBarChartPSState extends State<DenverBarChartPS> {
  final double barWidth = 25;
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(28.0),
        child: AspectRatio(
            aspectRatio: .75,
            child: Observer(
                builder: (_) => BarChart(
                      swapAnimationDuration: const Duration(seconds: 1),
                      BarChartData(
                        extraLinesData: ExtraLinesData(
                          horizontalLines: [
                              HorizontalLine(y: 3, color: Colors.red)
                        ]),
                        alignment: BarChartAlignment.center,
                        maxY: 14,
                        minY: 0,
                        groupsSpace: 20,
                        barTouchData: BarTouchData(enabled: true),
                        titlesData: FlTitlesData(
                            bottomTitles: AxisTitles(
                                axisNameSize: 40,
                                sideTitles: SideTitles(
                                  interval: 20,
                                  reservedSize: 50,
                                  showTitles: false,
                                  // getTitlesWidget: bottomTitles,
                                )),
                            show: true,
                            leftTitles: AxisTitles(
                                drawBehindEverything: true,
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  interval: 1,
                                  reservedSize: 20,
                                  getTitlesWidget: (value, meta) => Text(
                                    '${value.toInt()}',
                                    style: const TextStyle(
                                        color: Colors.green,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ))),
                        gridData: FlGridData(
                          drawHorizontalLine: true,
                          checkToShowHorizontalLine: (value) =>
                              value % PSBarData.interval == 0,
                          getDrawingHorizontalLine: (value) {
                            if (value == 0) {
                              return FlLine(
                                color: const Color(0xff363753),
                                strokeWidth: 3,
                              );
                            } else {
                              return FlLine(
                                color: const Color(0xff2a2747),
                                strokeWidth: 2,
                              );
                            }
                          },
                        ),
                        barGroups: PSBarData.barData
                            .map(
                              (data) => BarChartGroupData(
                                x: data.id!,
                                barRods: [
                                  BarChartRodData(
                                    toY: data.eixoY!,
                                    width: barWidth,
                                    color: data.color,
                                    borderRadius: data.eixoY! > 0
                                        ? const BorderRadius.only(
                                            topLeft: Radius.circular(6),
                                            topRight: Radius.circular(6),
                                          )
                                        : const BorderRadius.only(
                                            bottomLeft: Radius.circular(6),
                                            bottomRight: Radius.circular(6),
                                          ),
                                  ),
                                ],
                              ),
                            )
                            .toList(),
                      ),
                    ))),
      );
}







class DenverBarChartLG extends StatefulWidget {
  const DenverBarChartLG({super.key});

  @override
  State<DenverBarChartLG> createState() => _DenverBarChartLGState();
}

class _DenverBarChartLGState extends State<DenverBarChartLG> {
  final double barWidth = 25;
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(28.0),
        child: AspectRatio(
            aspectRatio: .75,
            child: Observer(
                builder: (_) => BarChart(
                      swapAnimationDuration: const Duration(seconds: 1),
                      BarChartData(
                        extraLinesData: ExtraLinesData(
                          horizontalLines: [
                              HorizontalLine(y: 3, color: Colors.red)
                        ]),
                        alignment: BarChartAlignment.center,
                        maxY: 14,
                        minY: 0,
                        groupsSpace: 20,
                        barTouchData: BarTouchData(enabled: true),
                        titlesData: FlTitlesData(
                            bottomTitles: AxisTitles(
                                axisNameSize: 40,
                                sideTitles: SideTitles(
                                  interval: 20,
                                  reservedSize: 50,
                                  showTitles: false,
                                  // getTitlesWidget: bottomTitles,
                                )),
                            show: true,
                            leftTitles: AxisTitles(
                                drawBehindEverything: true,
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  interval: 1,
                                  reservedSize: 20,
                                  getTitlesWidget: (value, meta) => Text(
                                    '${value.toInt()}',
                                    style: const TextStyle(
                                        color: Colors.green,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ))),
                        gridData: FlGridData(
                          drawHorizontalLine: true,
                          checkToShowHorizontalLine: (value) =>
                              value % LGBarData.interval == 0,
                          getDrawingHorizontalLine: (value) {
                            if (value == 0) {
                              return FlLine(
                                color: const Color(0xff363753),
                                strokeWidth: 3,
                              );
                            } else {
                              return FlLine(
                                color: const Color(0xff2a2747),
                                strokeWidth: 2,
                              );
                            }
                          },
                        ),
                        barGroups: LGBarData.barData
                            .map(
                              (data) => BarChartGroupData(
                                x: data.id!,
                                barRods: [
                                  BarChartRodData(
                                    toY: data.eixoY!,
                                    width: barWidth,
                                    color: data.color,
                                    borderRadius: data.eixoY! > 0
                                        ? const BorderRadius.only(
                                            topLeft: Radius.circular(6),
                                            topRight: Radius.circular(6),
                                          )
                                        : const BorderRadius.only(
                                            bottomLeft: Radius.circular(6),
                                            bottomRight: Radius.circular(6),
                                          ),
                                  ),
                                ],
                              ),
                            )
                            .toList(),
                      ),
                    ))),
      );
}








class DenverBarChartMF extends StatefulWidget {
  const DenverBarChartMF({super.key});

  @override
  State<DenverBarChartMF> createState() => _DenverBarChartMFState();
}

class _DenverBarChartMFState extends State<DenverBarChartMF> {
  final double barWidth = 25;
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(28.0),
        child: AspectRatio(
            aspectRatio: .75,
            child: Observer(
                builder: (_) => BarChart(
                      swapAnimationDuration: const Duration(seconds: 1),
                      BarChartData(
                        extraLinesData: ExtraLinesData(
                          horizontalLines: [
                              HorizontalLine(y: 3, color: Colors.red)
                        ]),
                        alignment: BarChartAlignment.center,
                        maxY: 14,
                        minY: 0,
                        groupsSpace: 20,
                        barTouchData: BarTouchData(enabled: true),
                        titlesData: FlTitlesData(
                            bottomTitles: AxisTitles(
                                axisNameSize: 40,
                                sideTitles: SideTitles(
                                  interval: 20,
                                  reservedSize: 50,
                                  showTitles: false,
                                  // getTitlesWidget: bottomTitles,
                                )),
                            show: true,
                            leftTitles: AxisTitles(
                                drawBehindEverything: true,
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  interval: 1,
                                  reservedSize: 20,
                                  getTitlesWidget: (value, meta) => Text(
                                    '${value.toInt()}',
                                    style: const TextStyle(
                                        color: Colors.green,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ))),
                        gridData: FlGridData(
                          drawHorizontalLine: true,
                          checkToShowHorizontalLine: (value) =>
                              value % MFBarData.interval == 0,
                          getDrawingHorizontalLine: (value) {
                            if (value == 0) {
                              return FlLine(
                                color: const Color(0xff363753),
                                strokeWidth: 3,
                              );
                            } else {
                              return FlLine(
                                color: const Color(0xff2a2747),
                                strokeWidth: 2,
                              );
                            }
                          },
                        ),
                        barGroups: MFBarData.barData
                            .map(
                              (data) => BarChartGroupData(
                                x: data.id!,
                                barRods: [
                                  BarChartRodData(
                                    toY: data.eixoY!,
                                    width: barWidth,
                                    color: data.color,
                                    borderRadius: data.eixoY! > 0
                                        ? const BorderRadius.only(
                                            topLeft: Radius.circular(6),
                                            topRight: Radius.circular(6),
                                          )
                                        : const BorderRadius.only(
                                            bottomLeft: Radius.circular(6),
                                            bottomRight: Radius.circular(6),
                                          ),
                                  ),
                                ],
                              ),
                            )
                            .toList(),
                      ),
                    ))),
      );
}





class DenverBarChartMG extends StatefulWidget {
  const DenverBarChartMG({super.key});

  @override
  State<DenverBarChartMG> createState() => _DenverBarChartMGState();
}

class _DenverBarChartMGState extends State<DenverBarChartMG> {
  final double barWidth = 25;
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(28.0),
        child: AspectRatio(
            aspectRatio: .75,
            child: Observer(
                builder: (_) => BarChart(
                      swapAnimationDuration: const Duration(seconds: 1),
                      BarChartData(
                        extraLinesData: ExtraLinesData(
                          horizontalLines: [
                              HorizontalLine(y: 3, color: Colors.red)
                        ]),
                        alignment: BarChartAlignment.center,
                        maxY: 14,
                        minY: 0,
                        groupsSpace: 20,
                        barTouchData: BarTouchData(enabled: true),
                        titlesData: FlTitlesData(
                            bottomTitles: AxisTitles(
                                axisNameSize: 40,
                                sideTitles: SideTitles(
                                  interval: 20,
                                  reservedSize: 50,
                                  showTitles: false,
                                  // getTitlesWidget: bottomTitles,
                                )),
                            show: true,
                            leftTitles: AxisTitles(
                                drawBehindEverything: true,
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  interval: 1,
                                  reservedSize: 20,
                                  getTitlesWidget: (value, meta) => Text(
                                    '${value.toInt()}',
                                    style: const TextStyle(
                                        color: Colors.green,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ))),
                        gridData: FlGridData(
                          drawHorizontalLine: true,
                          checkToShowHorizontalLine: (value) =>
                              value % MGBarData.interval == 0,
                          getDrawingHorizontalLine: (value) {
                            if (value == 0) {
                              return FlLine(
                                color: const Color(0xff363753),
                                strokeWidth: 3,
                              );
                            } else {
                              return FlLine(
                                color: const Color(0xff2a2747),
                                strokeWidth: 2,
                              );
                            }
                          },
                        ),
                        barGroups: MGBarData.barData
                            .map(
                              (data) => BarChartGroupData(
                                x: data.id!,
                                barRods: [
                                  BarChartRodData(
                                    toY: data.eixoY!,
                                    width: barWidth,
                                    color: data.color,
                                    borderRadius: data.eixoY! > 0
                                        ? const BorderRadius.only(
                                            topLeft: Radius.circular(6),
                                            topRight: Radius.circular(6),
                                          )
                                        : const BorderRadius.only(
                                            bottomLeft: Radius.circular(6),
                                            bottomRight: Radius.circular(6),
                                          ),
                                  ),
                                ],
                              ),
                            )
                            .toList(),
                      ),
                    ))),
      );
}




