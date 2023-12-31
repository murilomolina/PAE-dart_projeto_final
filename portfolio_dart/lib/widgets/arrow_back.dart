import 'package:flutter/material.dart';
import 'package:portfolio_dart/pages/pagina_inicial.dart';

class ArrowBack extends StatelessWidget {
  const ArrowBack({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton( //Lógica para a seta voltar pra página inicial
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
            Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaginaInicial()));
          },
        );
  }
}