import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';


class PaginaCertificados extends StatelessWidget {
  const PaginaCertificados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Meus certificados'),
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: SfPdfViewer.asset("portifolio/lib/assets/clmsCertificate.pdf"),
            ),
          ),
          const SizedBox(width: 16.0), 
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: SfPdfViewer.asset('portifolio\lib\assets\certificados\AWS_Academy_Graduate___AWS_Academy_Cloud_Foundations_Badge20230603-28-jswue9.pdf'),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: SfPdfViewer.asset('portifolio/lib/assets/certificados/CM3033-IntrodjucaoaCienciadjeDadjos-2023 (1).pdf'),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: SfPdfViewer.asset('portifolio/lib/assets/certificados/CM4042-FundjamentosdjeComputacaoemNuvem-AWSAcadjemy-2023 (1).pdf'),
            ),
          ),
        ],  
      ),
    );
  }
}