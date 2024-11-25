import 'package:flutter/material.dart';

class ItemDetalhado extends StatelessWidget {
  final String descricao;

  const ItemDetalhado({super.key, required this.descricao});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        descricao,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.black54,
        ),
      ),
    );
  }
}
