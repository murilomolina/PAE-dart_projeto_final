import 'package:flutter/material.dart';

class PaginaCertificados extends StatelessWidget {
  const PaginaCertificados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus certificados'),
      ),
      body: ListView(
        children: [
          // adicionar o pdf para vizualização e criar a classe para o usuario conseguir fazer o download
        ],
      ),
    );
  }
}