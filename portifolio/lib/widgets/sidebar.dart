import 'package:flutter/material.dart';
import 'package:portifolio/pages/pagina_certificados.dart';
import 'package:portifolio/pages/pagina_curriculo.dart';
import 'package:portifolio/pages/pagina_inicial.dart';
import 'package:portifolio/pages/pagina_links.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Drawer(
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
            title: const Text('Página inicial'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PaginaInicial()));
            },
          ),

          ListTile(
            title: const Text('Links'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PaginaLinks()));
            },
          ),

          ListTile(
            title: const Text('Currículo'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PaginaCurriculo()));
            },
          ),
          
          ListTile(
            title: const Text('Certificados'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PaginaCertificados()));
            },
          ),
        ],
      ),
    );
  }
}
