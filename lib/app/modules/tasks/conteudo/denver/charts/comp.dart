import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'chart_lg.dart';
import 'chart_ps.dart';

class Graph extends StatelessWidget {
  const Graph({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: const [
        AspectRatio(
          aspectRatio: 2,
          child: ChartPS()),
        // ChartLG(),
      ]),
    );
  }
}
