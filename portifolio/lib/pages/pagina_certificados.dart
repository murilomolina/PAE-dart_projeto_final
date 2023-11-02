import 'package:flutter/material.dart';
import 'package:portifolio/components/cont_certificados.dart';
import 'package:portifolio/widgets/sidebar.dart';

class PaginaCertificados extends StatelessWidget {
  const PaginaCertificados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 140, 196),       
        title: const Text('Meus Certificados'),
      ),
      drawer: const Sidebar(),
      body: Container(
        color: const Color.fromARGB(255, 2, 36, 63),
        child: ListView(
          children: const [
            ContCertificados(),
          ],
        ),
      ),
    );
  }
}
