import 'package:flutter/material.dart';
import 'package:portfolio_dart/pages/pagina_inicial.dart';

class ArrowBack extends StatelessWidget {
  const ArrowBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'Voltar para a Página Inicial', // Mensagem
      child: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PaginaInicial(),
            ),
          );
        },
      ),
    );
  }
}
