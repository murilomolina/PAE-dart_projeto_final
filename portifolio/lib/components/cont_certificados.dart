import 'package:flutter/material.dart';

class ContCertificados extends StatelessWidget {
  const ContCertificados({super.key});

  @override
  Widget build(BuildContext context) {
    return 
        Wrap(
              spacing: 30.0,
              runSpacing: 20.0,
              children: [
                Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 138, 147, 231),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset(
                      'lib/assets/certificados/AWS_Academy_Graduate___AWS_Academy_Cloud_Foundations_Badge20230603-28-jswue9_page-0001.jpg',
                      width: 630,
                    )),
                Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 138, 147, 231),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset(
                      'lib/assets/certificados/clmsCertificate_page-0001.jpg',
                      width: 630,
                    )),
                Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 138, 147, 231),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset(
                      'lib/assets/certificados/CM3033-IntrodjucaoaCienciadjeDadjos-2023 (1)_page-0001.jpg',
                      width: 630,
                    )),
                Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 138, 147, 231),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset(
                      'lib/assets/certificados/CM4042-FundjamentosdjeComputacaoemNuvem-AWSAcadjemy-2023 (1)_page-0001.jpg',
                      width: 630,
                    )),
              ],
            );
  }
}