// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:portifolio/widgets/sidebar.dart';

class PaginaCurriculo extends StatelessWidget {
  const PaginaCurriculo({Key? key}) : super(key: key);

  Future<void> downloadFile(String url) async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final fileName = url.split('/').last;
      final downloadsDirectory = await getDownloadsDirectory();

      if (downloadsDirectory != null) {
        final file = File('${downloadsDirectory.path}/$fileName');
        await file.writeAsBytes(response.bodyBytes);
        print('Arquivo baixado para: ${file.path}');
      } else {
        print('Não foi possível obter o diretório de downloads do usuário.');
      }
    } else {
      print('Falha ao baixar o arquivo: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    const fileUrl =
        'https://github.com/murilomolina/PAE-dart_projeto_final/blob/main/portifolio/lib/assets/curriculo.pdf';
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 140, 196),      
        title: const Text('Meu Currículo'),
        actions: [
          IconButton(
            icon: const Icon(Icons.download),
            onPressed: () => downloadFile(fileUrl),
          ),
        ],
      ),
      drawer: const Sidebar(),
      body: Center(
        child: Container(
          color: const Color.fromARGB(255, 2, 36, 63),
          child: ListView(
            children: [
              Image.asset('lib/assets/curriculo.jpg', height: 1000),
            ],
          ),
        ),
      ),
    );
  }
}
