import 'package:flutter/material.dart';
import 'package:portifolio/widgets/sidebar.dart';

class PaginaProjetos extends StatelessWidget {
  const PaginaProjetos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Meus Projetos'),
      ),
      drawer: const Sidebar(),
       body: Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'lib/assets/images/backgroung-binary.jpg', 
          fit: BoxFit.cover,
          color: Colors.black.withOpacity(0.5), 
          colorBlendMode: BlendMode.darken,
        ),
        Center(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.black.withOpacity(0.5), 
            child: const Text(
              'PÁGINA EM MANUTENÇÃO',
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
        ),
      ],
    ),
  );
  }
}