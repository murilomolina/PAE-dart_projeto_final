// ignore_for_file: use_build_context_synchronously
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadFile {
  static void downloadFile(BuildContext context) async {
    try {
      final ByteData data = await rootBundle.load('lib/assets/curriculo/curriculo.pdf');
      final List<int> bytes = data.buffer.asUint8List();

      final directory = await getExternalStorageDirectory();
      final filePath = '${directory?.path}/curriculo.pdf';

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Iniciando o download...'),
        ),
      );

      await Future.delayed(const Duration(seconds: 1)); 

      File file = File(filePath);
      await file.writeAsBytes(bytes);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Arquivo baixado com sucesso em ${directory?.path}.'),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Erro ao baixar o arquivo: $e'),
          duration: const Duration(milliseconds: 500),
        ),
      );

      // Se o download falhar, mostre um botão para o usuário.
      final snackBarAction = SnackBarAction(
        label: 'Acessar documento',
        onPressed: () {
          _launchURL('https://github.com/murilomolina/PAE-dart_projeto_final/blob/main/portfolio/lib/assets/curriculo/curriculo.pdf');
        },
      );

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Download falhou. Você pode acessar o Documento em PDF via github'),
          action: snackBarAction,
           duration: const Duration(seconds: 60),
        ),
      );
    }
  }
}

// SnackBar(
//           content: Text('Erro ao baixar o arquivo: $e'),
//           duration: const Duration(seconds: 4),
//         ),


// acessar URL´s
_launchURL(String url) async {
  // ignore: deprecated_member_use
  if (await canLaunch(url)) {
    // ignore: deprecated_member_use
    await launch(url);
  } else {
    throw 'Não foi possível abrir a URL: $url';
  }
}
