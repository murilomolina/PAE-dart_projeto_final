import 'package:flutter/material.dart';
import 'package:portifolio/components/coluna_nav.dart';
import 'package:portifolio/utils/breakpoints.dart';
import 'package:portifolio/components/sobre_mim.dart';
import 'package:portifolio/widgets/sidebar.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: const Color.fromARGB(255, 0, 140, 196),
        title: const Text(
          'Portfólio',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        toolbarHeight: kToolbarHeight,
        toolbarOpacity: 1.0,
        automaticallyImplyLeading: false,
        titleSpacing: 16,
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
            return const SobreMim();
          } else {
            return const Row(
              children: [
                ColunaNav(),
                Expanded(
                  child: SobreMim(),
                ),
              ],
              
            );
          }
        },
      ),
      ),
    );
  }
}
