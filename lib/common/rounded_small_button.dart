import 'package:flutter/material.dart';

class RoundedSmallButton extends StatelessWidget {
  final String label;
  final Color color;
  final VoidCallback onTap;
  final Color textColor;

  const RoundedSmallButton({
    super.key,
    required this.label,
    required this.color,
    required this.onTap,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        label,
        style: TextStyle(
          color: textColor,
        ),
      ),
      backgroundColor: color,
      labelPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    );
  }
}
