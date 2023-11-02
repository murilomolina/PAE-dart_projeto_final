import 'package:flutter/material.dart';
import 'package:portifolio/pages/pagina_certificados.dart';
import 'package:portifolio/pages/pagina_curriculo.dart';
import 'package:portifolio/pages/pagina_links.dart';
import 'package:portifolio/pages/pagina_projetos.dart';
import 'package:portifolio/widgets/custom_button.dart.dart';

class ColunaNav extends StatelessWidget {
  const ColunaNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                  width: 200,
                  color: const Color.fromARGB(255, 22, 62, 95),
                  child: ListView(
                   scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(200),
                          child: Image.network(
                            'https://avatars.githubusercontent.com/u/122751852?v=4'
                          ),
                        ),
                      ),
                      const Text('Murilo Molina Barone\n',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center
                          ),
                      const Text('murilo.m.barone@gmail.com\n',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center
                          ),
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
                );
  }
}