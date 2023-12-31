import 'package:flutter/material.dart';
import 'package:portfolio_dart/components/coluna_nav.dart';
import 'package:portfolio_dart/utils/breakpoints.dart';
import 'package:portfolio_dart/utils/descricao_projetos.dart';
import 'package:portfolio_dart/widgets/arrow_back.dart';
import 'package:portfolio_dart/widgets/projeto_padrao.dart';
import 'package:portfolio_dart/widgets/sidebar.dart';


class PaginaProjetos extends StatelessWidget {
  const PaginaProjetos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 140, 196),
        title: const Text('Meus Projetos'),
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
                          imagem: 'lib/assets/pre_exibicao/proj_missao_ambiental.jpg',
                          titulo: 'Projeto Site Missão Ambiental',
                          descricao: descricao_proj_missao_ambiental,
                          urlProjeto:
                              'https://github.com/Parelho/PI_2_Semestre',
                        ),
                        ProjetoPadrao(// projeto 02
                          imagem: 'lib/assets/pre_exibicao/exemplo.jpg',
                          titulo: 'Gerar um documento de Memorial de Calculos Basicos para OODC e EIV/RIT',
                          descricao: descricao_proj_gerar_doc,
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
                              imagem: 'lib/assets/pre_exibicao/proj_missao_ambiental.jpg',
                              titulo: 'Site Missão Ambiental',
                              descricao: descricao_proj_missao_ambiental,
                              urlProjeto:
                                  'https://github.com/Parelho/PI_2_Semestre',
                            ),
                            ProjetoPadrao(
                              imagem: 'lib/assets/pre_exibicao/exemplo.jpg',
                              titulo: 'Gerar um documento de Memorial de Calculos Basicos para OODC e EIV/RIT',
                              descricao: descricao_proj_gerar_doc,
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
