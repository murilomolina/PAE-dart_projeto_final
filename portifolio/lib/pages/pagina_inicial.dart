import 'package:flutter/material.dart';
import 'package:portifolio/pages/pagina_certificados.dart';
import 'package:portifolio/pages/pagina_curriculo.dart';
import 'package:portifolio/pages/pagina_links.dart';
import 'package:portifolio/pages/pagina_projetos.dart';
import 'package:portifolio/widgets/custom_button.dart.dart';
import 'package:portifolio/components/sobre_mim.dart';

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
        ),
        body: Row(
          children: [
            Container(
              width: 200,
              color: const Color.fromARGB(255, 22, 62, 95),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        'https://avatars.githubusercontent.com/u/122751852?v=4',
                        width: 100,
                      ),
                    ),
                  ),
                  const Text('Murilo Molina Barone\n',
                      style: TextStyle(color: Colors.white)),
                  const Text('murilo.m.barone@gmail.com\n',
                      style: TextStyle(color: Colors.white)),
                  CustomButton(
                    text: 'Meus Links',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PaginaLinks()));
                    },
                  ),
                  CustomButton(
                    text: 'Meu currículo',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PaginaCurriculo()));
                    },
                  ),
                  CustomButton(
                    text: 'Meus certificados',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const PaginaCertificados()));
                    },
                  ),
                  CustomButton(
                    text: 'Meus Projetos',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const PaginaProjetos()));
                    },
                  ),
                ],
              ),
            ),
            const SobreMim()
          ],
        )
    );
  }
}
