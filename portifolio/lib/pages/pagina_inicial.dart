import 'package:flutter/material.dart';
import 'package:portifolio/pages/pagina_certificados.dart';
import 'package:portifolio/pages/pagina_curriculo.dart';
import 'package:portifolio/pages/pagina_links.dart';
import 'package:portifolio/widgets/custom_button.dart.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Portfólio'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        
        children: [
          Padding(
              padding: const EdgeInsets.all(20.0), 
          child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.network(
            'https://avatars.githubusercontent.com/u/122751852?v=4',width: 100),
            ),
          ),

          CustomButton(
            text: 'Meus Links',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => PaginaLinks()));
            },
          ),
          CustomButton(
            text: 'Meu currículo',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PaginaCurriculo()));
            },
          ),
          CustomButton(
            text: 'Meus certificados',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => PaginaCertificados()));
            },
          ),
        ],
      )
    );
  }
}
