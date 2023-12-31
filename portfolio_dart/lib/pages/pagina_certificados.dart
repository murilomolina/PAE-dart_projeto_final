import 'package:flutter/material.dart';
import 'package:portfolio_dart/components/coluna_nav.dart';
import 'package:portfolio_dart/components/cont_certificados.dart';
import 'package:portfolio_dart/utils/breakpoints.dart';
import 'package:portfolio_dart/widgets/arrow_back.dart';
import 'package:portfolio_dart/widgets/sidebar.dart';

class PaginaCertificados extends StatelessWidget {
  const PaginaCertificados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 140, 196),
        title: const Text('Meus Certificados'),
        leading: const ArrowBack(),
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
