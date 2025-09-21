import 'package:flutter/material.dart';

class ElevatedButtonStyle extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Icon icon;
  const ElevatedButtonStyle({
    super.key,
    required this.onPressed,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      ),
      child: Row(children: [icon, Text(text)]),
    );
  }
}
