import 'package:flutter/material.dart';
import 'item_detalhado.dart';

class ListaWidget extends StatefulWidget {
  final List<Map<String, String>> itens;
  final ScrollController scrollController;

  const ListaWidget({super.key, required this.itens, required this.scrollController});

  @override
  _ListaWidgetState createState() => _ListaWidgetState();
}

class _ListaWidgetState extends State<ListaWidget> {
  int _itemExpandido = -1;

  void _expandirItem(int index) {
    setState(() {
      _itemExpandido = _itemExpandido == index ? -1 : index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: widget.scrollController,
      itemCount: widget.itens.length,
      itemBuilder: (context, index) {
        bool isExpandido = _itemExpandido == index;
        return GestureDetector(
          onTap: () => _expandirItem(index),
          child: Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Icon(Icons.folder, color: Colors.blue),
                  title: Text(widget.itens[index]["titulo"]!),
                  trailing: Icon(
                    isExpandido ? Icons.expand_less : Icons.expand_more,
                    color: Colors.blue,
                  ),
                ),
                if (isExpandido)
                  ItemDetalhado(
                    descricao: widget.itens[index]["descricao"]!,
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
