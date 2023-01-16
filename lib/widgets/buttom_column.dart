import 'package:flutter/material.dart';

class buttom_column extends StatelessWidget {
  const buttom_column(
      {super.key,
      required this.label,
      required this.color});
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: (() {
              const snackBar = SnackBar(content: Text('Marcando a...'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }),
            icon: const Icon(Icons.phone)),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}