import 'package:flutter/material.dart';
import 'package:portfolio_dart/pages/pagina_certificados.dart';
import 'package:portfolio_dart/pages/pagina_curriculo.dart';
import 'package:portfolio_dart/pages/pagina_links.dart';
import 'package:portfolio_dart/pages/pagina_projetos.dart';
import 'package:portfolio_dart/widgets/texto_clicavel.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 22, 62, 95),
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Murilo Molina Barone"),
            accountEmail: Row(),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/122751852?v=4'),
            ),
          ),
          ListTile(
            title: const Text('Links',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
            onTap: () {
              
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const PaginaLinks()),
                (route) => false,
              );
            },
          ),
          ListTile(
            title: const Text('Currículo',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
            onTap: () {
              
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const PaginaCurriculo()),
                (route) => false,
              );
            },
          ),
          ListTile(
            title: const Text('Certificados',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
            onTap: () {
              
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const PaginaCertificados()),
                (route) => false,
              );
            },
          ),
          ListTile(
            title: const Text('Projetos',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
            onTap: () {
              
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const PaginaProjetos()),
                (route) => false,
              );
            },
          ),
          Container(
            color: const Color.fromARGB(255, 22, 62, 95),
            padding: const EdgeInsets.only(top: 60.0, bottom: 60.0, left: 20.0),
            child:  const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextoClicavel('murilo.m.barone@gmail.com\n'),
                SizedBox(height: 10),
                TextoClicavel('+55(11)94350-3192\n'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
