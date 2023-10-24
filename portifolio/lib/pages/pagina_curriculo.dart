import 'package:flutter/material.dart';

class PaginaCurriculo extends StatelessWidget {
  const PaginaCurriculo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu curriculo'),
      ),
      body: ListView(
        children: [
            Image.network('https://marketplace.canva.com/EAFMa3KpeX8/1/0/1131w/canva-currículo-a4-simples-preto-KbFPnRDPxb8.jpg',
            height: 800,
            fit: BoxFit.contain,
            ),
          ],
        ),
      );
  }
}