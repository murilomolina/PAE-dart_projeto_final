// ignore_for_file: use_build_context_synchronously, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:portfolio_dart/components/coluna_nav.dart';
import 'package:portfolio_dart/utils/breakpoints.dart';
import 'package:portfolio_dart/widgets/download_file.dart';
import 'package:portfolio_dart/widgets/sidebar.dart';


class PaginaCurriculo extends StatelessWidget {
  const PaginaCurriculo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    double paddingPercentage = 0.08;

    final paddingValue = screenWidth * paddingPercentage;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 140, 196),
        title: const Text('Meu Currículo'),
        actions: [
          IconButton(
            icon: const Icon(Icons.download),
            onPressed: () => DownloadFile.downloadFile(context),
          ),
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
        child: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < mobileBreakpoint) {
            return Center(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.all(paddingValue),
                    child: Image.asset(
                      'lib/assets/curriculo/curriculo.jpg',
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Row(
              children: [
                const ColunaNav(),
                Expanded(
                  child: ListView(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(paddingValue),
                        child: Image.asset(
                          'lib/assets/curriculo/curriculo.jpg',
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          }
        }),
      ),
    );
  }
}
