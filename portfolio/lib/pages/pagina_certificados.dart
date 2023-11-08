import 'package:flutter/material.dart';
import 'package:portifolio/components/coluna_nav.dart';
import 'package:portifolio/components/cont_certificados.dart';
import 'package:portifolio/utils/breakpoints.dart';
import 'package:portifolio/widgets/sidebar.dart';

class PaginaCertificados extends StatelessWidget {
  const PaginaCertificados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 140, 196),
        title: const Text('Meus Certificados'),
        actions: [
          if (MediaQuery.of(context).size.width < mobileBreakpoint)
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Sidebar(),
                  ),
                );
              },
            ),
        ],
      ),
      body: Container(
        color: const Color.fromARGB(255, 2, 36, 63),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < mobileBreakpoint) {
              return ListView(children: const [
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 30.0),
                  child: ContCertificados(),
                ),
                SizedBox(height: 10.0)
              ]);
            } else {
              return Row(
                children: [
                  const ColunaNav(),
                  Expanded(
                      child: ListView(children: const [
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30.0),
                      child: ContCertificados(),
                    ),
                    SizedBox(height: 10.0)
                  ]))
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
