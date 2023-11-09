import 'package:flutter/material.dart';
import 'package:portifolio/components/coluna_nav.dart';
import 'package:portifolio/utils/breakpoints.dart';
import 'package:portifolio/utils/descricao_projetos.dart';
import 'package:portifolio/widgets/projeto_padrao.dart';
import 'package:portifolio/widgets/sidebar.dart';

class PaginaProjetos extends StatelessWidget {
  const PaginaProjetos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 140, 196),
        title: const Text('Meus Projetos'),
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
      backgroundColor: const Color.fromARGB(255, 2, 36, 63),
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < mobileBreakpoint) {
          return ListView(
            children: [
              Center(
                child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: constraints.maxWidth < mobileBreakpoint
                          ? constraints.maxWidth
                          : mobileBreakpoint,
                    ),
                    child: const Column(
                      children: [
                        ProjetoPadrao(//projeto 01
                          imagem: 'lib/assets/gif/projeto-em-execucao.gif',
                          titulo: 'Projeto Site Missão Ambiental',
                          descricao: descricao_proj_a,
                          urlProjeto:
                              'https://github.com/Parelho/PI_2_Semestre',
                        ),
                        ProjetoPadrao(// projeto 02
                          imagem: 'lib/assets/gif/projeto-em-execucao.gif',
                          titulo: 'Projeto em andamento!!',
                          descricao: descricao_proj_b,
                          urlProjeto:
                              'https://github.com/murilomolina?tab=repositories',
                        ),
                      ],
                    )
                    // mais projetos aqui
                    ),
              ),
            ],
          );
        } else {
          return Row(children: [
            const ColunaNav(),
            Expanded(
              child: ListView(
                children: [
                  Center(
                    child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: constraints.maxWidth < mobileBreakpoint
                              ? constraints.maxWidth
                              : mobileBreakpoint,
                        ),
                        child: const Column(
                          children: [
                            ProjetoPadrao(
                              imagem: 'lib/assets/gif/projeto-em-execucao.gif',
                              titulo: 'Projeto Site Missão Ambiental',
                              descricao: descricao_proj_a,
                              urlProjeto:
                                  'https://github.com/Parelho/PI_2_Semestre',
                            ),
                            ProjetoPadrao(
                              imagem: 'lib/assets/gif/projeto-em-execucao.gif',
                              titulo: 'Projeto em andamento!!',
                              descricao: descricao_proj_b,
                              urlProjeto:
                                  'https://github.com/murilomolina?tab=repositories',
                            ),
                          ],
                        )
                        // mais projetos aqui
                        ),
                  ),
                ],
              ),
            ),
          ]);
        }
      }),
    );
  }
}
