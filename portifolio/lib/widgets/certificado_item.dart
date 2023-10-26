import 'package:flutter/material.dart';

class CertificadoItem extends StatelessWidget {
  final String title;
  final String imagePath;

  const CertificadoItem({required this.title, required this.imagePath, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text(title, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        const SizedBox(width:8.0),
        Container(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(imagePath),
        ),
      ],
    );
  }
}