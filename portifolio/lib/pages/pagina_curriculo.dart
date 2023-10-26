import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PaginaCurriculo extends StatelessWidget {
  const PaginaCurriculo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Meu curriculo'),
      ),
      body: SfPdfViewer.asset('portifolio/lib/assets/curriculo-teste.pdf'),
    );
  }
}