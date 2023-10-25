import 'package:flutter/material.dart';
import 'package:portifolio/pages/pagina_certificados.dart';
import 'package:portifolio/pages/pagina_curriculo.dart';
import 'package:portifolio/pages/pagina_links.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portifólio'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Bem-vindo ao meu portifólio!',
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PaginaLinks()));
            },
            child: const Text('Meus Links'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaginaCurriculo()));
            },
            child: const Text('Meu curriculo'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaginaCertificados()));
            },
            child: const Text('Meus certificados'),
          )
        ],
      )),
    );
  }
}
