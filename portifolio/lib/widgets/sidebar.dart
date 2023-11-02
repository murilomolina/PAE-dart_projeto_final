import 'package:flutter/material.dart';
import 'package:portifolio/pages/pagina_certificados.dart';
import 'package:portifolio/pages/pagina_curriculo.dart';
import 'package:portifolio/pages/pagina_inicial.dart';
import 'package:portifolio/pages/pagina_links.dart';
import 'package:portifolio/pages/pagina_projetos.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {

    return 
    Drawer(
      backgroundColor: const Color.fromARGB(255, 22, 62, 95),
      child: Flexible(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Murilo Molina Barone"),
            accountEmail: Text("murilo.m.barone@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/122751852?v=4'),
            ),
          ),
          ListTile(
            title: const Text('Página inicial', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PaginaInicial()));
            },
          ),

          ListTile(
            title: const Text('Links', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PaginaLinks()));
            },
          ),

          ListTile(
            title: const Text('Currículo', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PaginaCurriculo()));
            },
          ),
          
          ListTile(
            title: const Text('Certificados', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PaginaCertificados()));
            },
          ),
          ListTile(
            title: const Text('Projetos', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PaginaProjetos()));
            },
          ),
        ],
      ),
      )
    );
  }
}
