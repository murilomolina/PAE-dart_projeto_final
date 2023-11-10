import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinksWidget extends StatelessWidget {

  final String url;
  final String imageurl;

  const LinksWidget({super.key,
  required this.url,
  required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return  Container(
                margin: const EdgeInsets.all(50),
                child: ElevatedButton(
                  style:  ButtonStyle(
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.white),
                          shadowColor: MaterialStateProperty.all(Colors.grey),
                          elevation: MaterialStateProperty.all(50.0)),
                  onPressed: () {
                    _launchURL(url);
                  },
                  child: Image.network(
                    imageurl,
                    width: 100,
                    height: 100,
                  ),
                ),
              );
  }
}

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
