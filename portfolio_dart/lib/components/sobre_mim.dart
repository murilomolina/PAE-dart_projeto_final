import 'package:flutter/material.dart';
import 'package:portfolio_dart/components/tabela_competencias.dart';

class SobreMim extends StatelessWidget {
  const SobreMim({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
          children: [ 
            Container(
              color: const Color.fromARGB(255, 2, 36, 63),
              child:   
              const Padding(
              padding: EdgeInsets.all(20.0),
              child:
                  // TEXTO CENTRALIZADO
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                    Text(
                      'Sobre Mim:',
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255)
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          'Me chamo Murilo Molina Barone, tenho 20 anos, moro em Santo André, São Paulo.\n\nSou graduando em Ciência da Computação pelo IMT - Mauá - Instituto Mauá de Tecnologia. Fluente de inglês há 4 anos',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 255, 255, 255)
                          ),
                          textAlign: TextAlign.center,
                          
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Minhas Competências:',
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255)
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    TabelaCompetencias(),
                  ]
                )
              )
            )
            ]
          ),
    );
        
                
  }
}
