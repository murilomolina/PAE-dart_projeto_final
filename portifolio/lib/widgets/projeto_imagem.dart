import 'package:flutter/material.dart';

class ProjetoImagem extends StatelessWidget {
  final String imagem;
  final String titulo;
  final String descricao;
  final String linkProjeto;

  const ProjetoImagem({
    Key? key,
    required this.imagem,
    required this.titulo,
    required this.descricao,
    required this.linkProjeto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titulo,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(imagem, width: screenWidth * 0.3), 
              const SizedBox(width: 20),
              Flexible(
                child: Text(
                  descricao + linkProjeto,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


//          Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Image.asset(imagem, width: screenWidth * 0.3), 
//               const SizedBox(width: 20),
//               Flexible(
//                 child: Text(
//                   descricao,
//                   style: const TextStyle(color: Colors.white),
//                 ),
//               ),
//             ],
//           ),