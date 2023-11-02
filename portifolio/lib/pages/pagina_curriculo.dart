// ignore_for_file: use_build_context_synchronously, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:portifolio/widgets/sidebar.dart';
import 'package:url_launcher/url_launcher.dart';

class PaginaCurriculo extends StatelessWidget {
  const PaginaCurriculo({Key? key}) : super(key: key);

  final String githubFileUrl = 'https://github.com/murilomolina/PAE-dart_projeto_final/blob/main/portifolio/lib/assets/curriculo/curriculo.pdf';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 140, 196),
        title: const Text('Meu Currículo'),
        actions: [
          IconButton(
            icon: const Icon(Icons.download),
            onPressed: () => openGithubFile(context),
          ),
        ],
      ),
      drawer: const Sidebar(),
      body: Center(
        child: Container(
          color: const Color.fromARGB(255, 2, 36, 63),
          child: ListView(
            children: [
              Image.asset('lib/assets/curriculo/curriculo.jpg', height: 1000),
            ],
          ),
        ),
      ),
    );
  }
   void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  Future<void> openGithubFile(BuildContext context) async {

    final canLaunchUrl = await canLaunch(githubFileUrl);
    if (canLaunchUrl) {
      await launch(githubFileUrl);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Não foi possível abrir o arquivo.'),
        ),
      );
    }
  }
}