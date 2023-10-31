import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:portifolio/widgets/sidebar.dart';

class PaginaCurriculo extends StatelessWidget {
  const PaginaCurriculo({Key? key}) : super(key: key);

  Future<void> _downloadPDF(BuildContext context) async {
    const assetPath = 'lib/assets/curriculo.pdf';
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
        title: const Text('Meu currículo'),
        actions: [
          IconButton(
            icon: const Icon(Icons.download),
            onPressed: () => _downloadPDF(context),
          ),
        ],
      ),
      drawer: const Sidebar(),
      body: Center(
        child: ListView(
          children: [
            Image.asset('lib/assets/curriculo.jpg', height: 1000),
          ],
        ),
      ),
    );
  }
}


/*-------------------------------------------------------------------------------------------------------------------------------------*/
// código para Baixar PDF via URL
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart;
// import 'package:path_provider/path_provider.dart';
// import 'package:http/http.dart as http;
// import 'dart:io';

// class PaginaCurriculo extends StatelessWidget {
//   const PaginaCurriculo({Key? key}) : super(key: key);

//   Future<void> _downloadPDF(BuildContext context) async {
//     final url = 'URL_DO_PDF'; 
//     final response = await http.get(Uri.parse(url));

//     if (response.statusCode == 200) {
//       final directory = await getApplicationDocumentsDirectory();
//       final filePath = '${directory.path}/curriculo.pdf';

//       final file = File(filePath);
//       await file.writeAsBytes(response.bodyBytes, flush: true);

//       Fluttertoast.showToast(
//         msg: 'Download concluído',
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.BOTTOM,
//       );
//     } else {
//       Fluttertoast.showToast(
//         msg: 'Erro ao fazer o download',
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.BOTTOM,
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text('Meu currículo'),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.download),
//             onPressed: () => _downloadPDF(context),
//           ),
//         ],
//       ),
//        drawer: const Sidebar(),
//        body: Center(
//            child: ListView(
//            children: [
//              Image.asset('lib/assets/curriculo.jpg', height: 1000),
//              ],
//       ),
//     );
//   }
// }
