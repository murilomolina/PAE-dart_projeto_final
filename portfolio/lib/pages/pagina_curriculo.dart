// ignore_for_file: use_build_context_synchronously, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:portifolio/widgets/download_file.dart';
import 'package:portifolio/widgets/sidebar.dart';


class PaginaCurriculo extends StatelessWidget {
  const PaginaCurriculo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    double paddingPercentage = 0.08; 

    final paddingValue = screenWidth * paddingPercentage;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 140, 196),
        title: const Text('Meu Currículo'),
        actions: [
          IconButton(
            icon: const Icon(Icons.download),
            onPressed: () => DownloadFile.downloadFile(context),
          ),
        ],
      ),
      drawer: const Sidebar(),
      body: 
      Center(
        child: Container(
          color: const Color.fromARGB(255, 2, 36, 63),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.all(paddingValue),
                child: Image.asset('lib/assets/curriculo/curriculo.jpg',),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
