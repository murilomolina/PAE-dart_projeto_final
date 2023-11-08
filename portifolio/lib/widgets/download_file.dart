// ignore_for_file: use_build_context_synchronously
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class DownloadFile {
  static void downloadFile(BuildContext context) async {
    try {
      final ByteData data = await rootBundle.load('lib/assets/curriculo/curriculo.jpg');
      final List<int> bytes = data.buffer.asUint8List();

      final directory = await getExternalStorageDirectory();
      final filePath = '${directory?.path}/curriculo.jpg';

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
        ),
      );
    }
  }
}