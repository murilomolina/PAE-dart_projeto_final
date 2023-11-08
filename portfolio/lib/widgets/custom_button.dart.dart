import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({super.key, 
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        SizedBox(
          width: 150,
          child: ElevatedButton(
          onPressed: onPressed,
          child: Text(text),
        ),
        ),
      ],
    );
  }
}