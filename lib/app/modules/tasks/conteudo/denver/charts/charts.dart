import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:universo_prematuro_v2/app/modules/tasks/conteudo/denver/charts/chart_ps.dart';

import '../denver_bar_chart/denver_bar_chart_page_ps.dart';
import 'chart_lg.dart';
import 'chart_mf.dart';
import 'chart_mg.dart';
import 'comp.dart';

class Charts extends StatefulWidget {
  const Charts({super.key});

  @override
  State<Charts> createState() => _ChartsState();
}

class _ChartsState extends State<Charts> {
  int currentIndex = 0;
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gráficos de Desenvolvimento')
      ),
      body: Observer(builder: (_) {
      return PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: [
          ChartPS(),
          ChartLG(),
          ChartMF(),
          ChartMG(),
        ],
      );
    }));
  }
}

// Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         child: Column(
//           children: <Widget>[
//             Expanded(
//               child: LayoutBuilder(
//                 builder: (_, constraints){
//                   return SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(children: [
//                       ChartPS(),
//                       ChartLG()
//                     ]),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       )