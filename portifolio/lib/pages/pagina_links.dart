import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PaginaLinks extends StatelessWidget {
  final String urlGit = 'https://github.com/murilomolina';
  final String urlLinkedin ='https://www.linkedin.com/in/murilo-molina-barone-8a144ba1/';

  const PaginaLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Meus links'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                _launchURL(urlGit);
              },
              child: const Text('Acessar Github'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                _launchURL(urlLinkedin);
              },
              child: const Text('Acessar Linkedin'),
            ),
          ],
        ),
      ),
    );
  }
}

// Função para acessar URL´s
_launchURL(String url) async {
  // ignore: deprecated_member_use
  if (await canLaunch(url)) {
    // ignore: deprecated_member_use
    await launch(url);
  } else {
    throw 'Não foi possível abrir a URL: $url';
  }
}
