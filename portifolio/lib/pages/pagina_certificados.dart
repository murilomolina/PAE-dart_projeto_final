import 'package:flutter/material.dart';
import 'package:portifolio/widgets/certificado_item.dart';

class PaginaCertificados extends StatelessWidget {
  const PaginaCertificados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Meus certificados'),
      ),
      body: ListView(
        children: const [
          CertificadoItem(
            title: 'Certificado 1',
            imagePath: 'lib/assets/certificados/AWS_Academy_Graduate___AWS_Academy_Cloud_Foundations_Badge20230603-28-jswue9_page-0001.jpg',
          ),
          SizedBox(height: 10.0),
          CertificadoItem(
            title: 'Certificado 2',
            imagePath: 'lib/assets/certificados/clmsCertificate_page-0001.jpg',
          ),
          SizedBox(height: 10.0),
          CertificadoItem(
            title: 'Certificado 3',
            imagePath: 'lib/assets/certificados/CM3033-IntrodjucaoaCienciadjeDadjos-2023 (1)_page-0001.jpg',
          ),
          SizedBox(height: 10.0),
          CertificadoItem(
            title: 'Certificado 4',
            imagePath: 'lib/assets/certificados/CM4042-FundjamentosdjeComputacaoemNuvem-AWSAcadjemy-2023 (1)_page-0001.jpg',
          ),
        ],
      ),
    );
  }
}