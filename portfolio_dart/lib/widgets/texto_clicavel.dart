import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextoClicavel extends StatelessWidget {
  final String text;



  const TextoClicavel(this.text, {super.key});

  void _copyTextToClipboard(BuildContext context) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('$text copiado para a área de transferência'),
    ));
  }
   
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (hovered) {
        if (hovered) {
           const Color.fromARGB(255, 255, 255, 255);
        }
      },
      onTap: () {
        _copyTextToClipboard(context);
      },
      child: Text(
        text,
        style: const TextStyle(
          decoration: TextDecoration.underline,
          color: Color.fromARGB(255, 107, 214, 218)
          ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
