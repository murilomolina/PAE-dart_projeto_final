import 'package:flutter/material.dart';

class SobreMim extends StatelessWidget {
  const SobreMim({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
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
                        'Sou graduando em Ciência da Computação pelo IMT - Mauá - Instituto Mauá de Tecnologia. Fluente de inglês há 4 anos',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255)
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Minhas Competências:',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255)
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '''
          UML (Linguagem de modelagem unificada) - IMT - Mauá - Instituto Mauá de Tecnologia

          SQL - IMT - Mauá - Instituto Mauá de Tecnologia 

          Ciência de dados - IMT - Mauá - Instituto Mauá de Tecnologia
                          
          Banco de dados - IMT - Mauá - Instituto Mauá de Tecnologia

          Modelagem de dados - IMT - Mauá - Instituto Mauá de Tecnologia

          Java - IMT - Mauá - Instituto Mauá de Tecnologia

          Python - IMT - Mauá - Instituto Mauá de Tecnologia
          ''',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 255, 255, 255)
                    ),
                    textAlign: TextAlign.center,
                  )
                ]
              )
            )
          )
          ]
        );
        
                
  }
}
