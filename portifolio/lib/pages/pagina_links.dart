import 'package:flutter/material.dart';

class PaginaLinks extends StatelessWidget {
  const PaginaLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus links'),
      ),
      body: const Center(
        child: Text('ADICIONAR BOTAO COM LINKS // OU OUTRO MÉTODO PARA ACESSAR MEU GITHUB E MEU LINKEDIN'),
      ),
    );
  }
}