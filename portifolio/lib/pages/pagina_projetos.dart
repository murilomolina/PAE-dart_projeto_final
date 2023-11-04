import 'package:flutter/material.dart';
import 'package:portifolio/utils/breakpoints.dart';
import 'package:portifolio/widgets/projeto_imagem.dart';
import 'package:portifolio/widgets/sidebar.dart';

class PaginaProjetos extends StatelessWidget {
  const PaginaProjetos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 140, 196),
        title: const Text('Meus Projetos'),
      ),
      drawer: const Sidebar(),
      backgroundColor: const Color.fromARGB(255, 2, 36, 63),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final maxWidth = constraints.maxWidth;
          return Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: maxWidth < mobileBreakpoint ? maxWidth : mobileBreakpoint,
              ),
              child: ListView(
                children: const [
                  ProjetoImagem(
                    imagem: 'lib/assets/gif/projeto-em-execucao.gif',
                    titulo: 'Projeto em andamento',
                    descricao: 'Aqui vai a descrição do projeto',
                    linkProjeto: '\n\nhttps://github.com/murilomolina?tab=repositories',
                  ),
                  ProjetoImagem(
                    imagem: 'lib/assets/gif/projeto-em-execucao.gif',
                    titulo: 'Projeto em andamento',
                    descricao: 'Aqui vai a descrição do projeto',
                    linkProjeto: '\n\nhttps://github.com/murilomolina?tab=repositories',
                  ),
                  // Outros projetos aqui
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
