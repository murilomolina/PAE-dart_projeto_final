// ignore_for_file: use_build_context_synchronously
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:open_file/open_file.dart';

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

      try {
        final result = await OpenFile.open(filePath);
        if (result.type != ResultType.done) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Não foi possível abrir o arquivo.'),
            ),
          );
        }
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Erro ao abrir o arquivo: $e'),
          ),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Erro ao baixar o arquivo: $e'),
        ),
      );
    }
  }
}
