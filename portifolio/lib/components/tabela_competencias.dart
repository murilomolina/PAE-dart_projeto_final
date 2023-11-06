import 'package:flutter/material.dart';

class TabelaCompetencias extends StatelessWidget {
  const TabelaCompetencias({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: DataTable(
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
        rows: const [
          DataRow(cells: [
            DataCell(
              Text(
                'UML (Linguagem de modelagem unificada)',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            DataCell(
              Text(
                'IMT - Mauá - Instituto Mauá de Tecnologia',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ]),
          DataRow(cells: [
            DataCell(
              Text(
                'SQL',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            DataCell(
              Text(
                'IMT - Mauá - Instituto Mauá de Tecnologia',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ]),
        DataRow(cells: [
          DataCell(Text('Ciência de dados',
                          style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,)),
          DataCell(Text('IMT - Mauá - Instituto Mauá de Tecnologia',
                  style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),),
        ]),
        DataRow(cells: [
          DataCell(Text('Banco de dados',
                  style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              ),
          DataCell(Text('IMT - Mauá - Instituto Mauá de Tecnologia',
                  style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              ),
        ]),
        DataRow(cells: [
          DataCell(Text('Modelagem de dados',
                  style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              ),
          DataCell(Text('IMT - Mauá - Instituto Mauá de Tecnologia', 
                  style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              ),
        ]),
        DataRow(cells: [
          DataCell(Text('Java',
                  style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              ),
          DataCell(Text('IMT - Mauá - Instituto Mauá de Tecnologia',
                  style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              ),
        ]),
        DataRow(cells: [
          DataCell(Text('Python',
                  style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              ),
          DataCell(Text('IMT - Mauá - Instituto Mauá de Tecnologia',
                  style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              ),
        ],
        ),
      ],
      ),
    );
  }
}
