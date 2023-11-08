import 'package:flutter/material.dart';
import 'package:portifolio/pages/pagina_certificados.dart';
import 'package:portifolio/pages/pagina_curriculo.dart';
import 'package:portifolio/pages/pagina_inicial.dart';
import 'package:portifolio/pages/pagina_links.dart';
import 'package:portifolio/pages/pagina_projetos.dart';
import 'package:portifolio/widgets/texto_clicavel.dart';

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
            accountEmail: Row(),
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
          Container(
            color: const Color.fromARGB(255, 22, 62, 95),
            padding: const EdgeInsets.only(top: 60.0, bottom: 60.0, left: 20.0),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Email:', style: TextStyle(color: Colors.white)),
                TextoClicavel('murilo.m.barone@gmail.com\n'),
                SizedBox(height: 8),
                Text('Celular:', style: TextStyle(color: Colors.white)),
                TextoClicavel('+55(11)94350-3192\n'),
              ],
          ),
          ),
        ],
      ),
      )
    );
  }
}
