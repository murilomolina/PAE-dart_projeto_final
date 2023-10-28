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
          centerTitle: false,
          title: const Text('Portfólio',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24
            ),
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
              color: const Color.fromARGB(
                  255, 22, 62, 95),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 Padding(
                    padding: const EdgeInsets.all(
                      20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        'https://avatars.githubusercontent.com/u/122751852?v=4',
                        width: 100,
                      ),
                    ),
                  ),
                  const Text('Murilo Molina Barone\n', style: TextStyle(color: Colors.white)),
                  const Text('murilo.m.barone@gmail.com\n',  style: TextStyle(color: Colors.white)),
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
                ],
              ),
            ),

            // SE QUISER ADICIONAR UMA IMAGEM DE FUNDO PARA O Expanded É NESTE TRECHO:
            // Container(
            //   decoration: const BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage('' 
            //       ),
            //       fit: BoxFit.cover
            //       )
            //       ),
            // ),

            // TEXTO CENTRALIZADO
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Sobre Mim:',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(
                      height:
                          20),

                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(
                          20.0),
                      child: Text(
                        'Sou graduando em Ciência da Computação pelo IMT - Mauá - Instituto Mauá de Tecnologia. Falante fluente de inglês há 4 anos',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                      ),
                    ),
                  ),

                  SizedBox(height: 40),

                  Text(
                    'Minhas Competências:',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(
                      height:
                          20),

                  Text(
                    '''
        UML (Linguagem de modelagem unificada) - IMT - Mauá - Instituto Mauá de Tecnologia

        SQL - IMT - Mauá - Instituto Mauá de Tecnologia 

        Ciência de dados - IMT - Mauá - Instituto Mauá de Tecnologia
                        
        Banco de dados - IMT - Mauá - Instituto Mauá de Tecnologia

        Modelagem de dados - IMT - Mauá - Instituto Mauá de Tecnologia

        Java - IMT - Mauá - Instituto Mauá de Tecnologia

        Python - IMT - Mauá - Instituto Mauá de Tecnologia
        ''',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
