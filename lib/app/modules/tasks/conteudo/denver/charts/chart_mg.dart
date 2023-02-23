import 'package:flutter/material.dart';

import '../denver_bar_chart/denver_bar_chart_page_ps.dart';


class ChartMG extends StatefulWidget {
  const ChartMG({super.key});

  @override
  State<ChartMG> createState() => _ChartMGState();
}

class _ChartMGState extends State<ChartMG> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Expanded(
              child: LayoutBuilder(
                builder: (_, constraints) => SingleChildScrollView(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'Gráfico Motor Grosso',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(25.0),
                        child: LGBarChartPage(),
                      ),
                      
                      const SizedBox(height: 20),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: Text(
                            'VERDE = SIM',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: Text(
                            'VERMELHO = NÃO',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: Text(
                            'AMARELO = PARCIAL',
                            style: TextStyle(
                              color: Color.fromARGB(255, 235, 212, 0),
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: Text(
                            'LARANJA = RECUSA',
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 05),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.green),
                            fixedSize: MaterialStateProperty.all(const Size.fromWidth(200))
                          ),
                            onPressed: () {},
                            child: const Text('PÁGINA INICIAL', style: TextStyle(color: Colors.white),)
                            
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }
}
