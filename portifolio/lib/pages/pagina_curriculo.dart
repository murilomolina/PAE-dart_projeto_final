import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:path_provider/path_provider.dart';
import 'package:portifolio/widgets/sidebar.dart';



class PaginaCurriculo extends StatelessWidget {
  const PaginaCurriculo({super.key});

  Future<void> _downloadPDF(BuildContext context) async {
    const assetPath = 'lib/assets/curriculo-teste.pdf';
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/curriculo.pdf';

    try {
      final data = await rootBundle.load(assetPath);
      final bytes = data.buffer.asUint8List();

      final file = File(filePath);
      await file.writeAsBytes(bytes, flush: true);

      Fluttertoast.showToast(
        msg: 'Download concluído',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
    } catch (e) {
      Fluttertoast.showToast(
        msg: 'Erro ao fazer o download',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
    }
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Meu curriculo'),
        actions:  [
          IconButton(
            icon: const Icon(Icons.download),
            onPressed: () => _downloadPDF(context),
          ),
        ],
      ),
      drawer: const Sidebar(),
      body:  Center(
        child:
        ListView(
        children:[
        Image.asset('lib/assets/curriculo-teste_page-0001.jpg', height: 1000),
        ],
      ),
      ),
    );
  }
}