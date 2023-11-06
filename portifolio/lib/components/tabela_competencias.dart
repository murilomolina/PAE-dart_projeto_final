import 'package:flutter/material.dart';
import 'package:portifolio/utils/breakpoints.dart';

class TabelaCompetencias extends StatelessWidget {
  const TabelaCompetencias({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final screenWidth = MediaQuery.of(context).size.width;
          double fonte = screenWidth < mobileBreakpoint ? 19.0 : 20.0;
          const fontSizeMin = 18.0;
          if (fonte < fontSizeMin) {
            fonte = fontSizeMin;
          } 

          return DataTable(
            // ignore: deprecated_member_use
            dataRowHeight: 60.0,
            columns: const [
              DataColumn(
                label: Text(
                  'Competência',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              DataColumn(
                label: Text(
                  'Instituição',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
            rows: [
              DataRow(cells: [
                DataCell(
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'UML (Linguagem de modelagem unificada)',
                      style: TextStyle(
                        fontSize: fonte,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                DataCell(
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'IMT - Mauá - Instituto Mauá de Tecnologia',
                      style: TextStyle(
                        fontSize: fonte,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 3,
                    ),
                  ),
                ),
              ]),
          DataRow(cells: [
            DataCell(
              Text(
                'SQL',
                style: TextStyle(
                  fontSize: fonte,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            DataCell(
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'IMT - Mauá - Instituto Mauá de Tecnologia',
                      style: TextStyle(
                        fontSize: fonte,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 3,
                    ),
                  ),
                ),
          ]),
        DataRow(cells: [
          DataCell(Text('Ciência de dados',
                          style: TextStyle(
                  fontSize: fonte,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,)),
         DataCell(
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'IMT - Mauá - Instituto Mauá de Tecnologia',
                      style: TextStyle(
                        fontSize: fonte,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 3,
                    ),
                  ),
                ),
        ]),
        DataRow(cells: [
          DataCell(Text('Banco de dados',
                  style: TextStyle(
                  fontSize: fonte,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              ),
          DataCell(
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'IMT - Mauá - Instituto Mauá de Tecnologia',
                      style: TextStyle(
                        fontSize: fonte,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 3,
                    ),
                  ),
                ),
        ]),
        DataRow(cells: [
          DataCell(Text('Modelagem de dados',
                  style: TextStyle(
                  fontSize: fonte,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              ),
          DataCell(
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'IMT - Mauá - Instituto Mauá de Tecnologia',
                      style: TextStyle(
                        fontSize: fonte,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 3,
                    ),
                  ),
                ),
        ]),
        DataRow(cells: [
          DataCell(Text('Java',
                  style: TextStyle(
                  fontSize: fonte,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              ),
          DataCell(
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'IMT - Mauá - Instituto Mauá de Tecnologia',
                      style: TextStyle(
                        fontSize: fonte,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 3,
                    ),
                  ),
                ),
        ]),
        DataRow(cells: [
          DataCell(Text('Python',
                  style: TextStyle(
                  fontSize: fonte,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              ),
          DataCell(
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'IMT - Mauá - Instituto Mauá de Tecnologia',
                      style: TextStyle(
                        fontSize: fonte,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 3,
                    ),
                  ),
                ),
        ],
        ),
      ],
      );
        }
      ),
    );
  }
}
