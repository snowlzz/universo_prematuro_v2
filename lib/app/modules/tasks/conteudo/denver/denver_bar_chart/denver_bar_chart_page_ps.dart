import 'package:flutter/material.dart';

import 'denver_bar_chart.dart';

class PSBarChartPage extends StatelessWidget {
  const PSBarChartPage({super.key});

  @override
  Widget build(BuildContext context) => Card(
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(32),
    ),
    color: const Color.fromARGB(255, 255, 193, 143),
    child: const Padding(
        padding: EdgeInsets.only(top: 16),
        child:  DenverBarChartPS())
        );
}

class LGBarChartPage extends StatelessWidget {
  const LGBarChartPage({super.key});

  @override
  Widget build(BuildContext context) => Card(
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(32),
    ),
    color: const Color.fromARGB(255, 255, 193, 143),
    child: const Padding(
        padding: EdgeInsets.only(top: 16),
        child:  DenverBarChartLG())
        );
}

class MFBarChartPage extends StatelessWidget {
  const MFBarChartPage({super.key});

  @override
  Widget build(BuildContext context) => Card(
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(32),
    ),
    color: const Color.fromARGB(255, 255, 193, 143),
    child: const Padding(
        padding: EdgeInsets.only(top: 16),
        child:  DenverBarChartMF())
        );
}

class MGBarChartPage extends StatelessWidget {
  const MGBarChartPage({super.key});

  @override
  Widget build(BuildContext context) => Card(
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(32),
    ),
    color: const Color.fromARGB(255, 255, 193, 143),
    child: const Padding(
        padding: EdgeInsets.only(top: 16),
        child:  DenverBarChartMG())
        );
}

