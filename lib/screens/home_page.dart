import 'package:flutter/material.dart';
import '../widgets/lista_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  final List<Map<String, String>> _itens = List.generate(
    20,
        (index) => {
      "titulo": "Item $index",
      "descricao": "Descrição breve do Item $index",
    },
  );

  // Função para adicionar um novo item com entrada do usuário
  void _adicionarItem(BuildContext context) {
    String titulo = "";
    String descricao = "";

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Adicionar Novo Item"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: const InputDecoration(labelText: "Título"),
                onChanged: (value) {
                  titulo = value;
                },
              ),
              TextField(
                decoration: const InputDecoration(labelText: "Descrição"),
                onChanged: (value) {
                  descricao = value;
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Fecha o diálogo sem fazer nada
              },
              child: const Text("Cancelar"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Fundo azul para o botão
                foregroundColor: Colors.white
              ),
              onPressed: () {
                if (titulo.isNotEmpty && descricao.isNotEmpty) {
                  setState(() {
                    _itens.add({
                      "titulo": titulo,
                      "descricao": descricao,
                    });
                  });
                  Future.delayed(const Duration(milliseconds: 200), () {
                    _scrollController.animateTo(
                      _scrollController.position.maxScrollExtent,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  });
                  Navigator.of(context).pop(); // Fecha o diálogo
                }
              },
              child: Text("Adicionar"),
            ),
          ],
        );
      },
    );
  }

  // Função para rolar para o topo
  void _rolarParaTopo() {
    _scrollController.animateTo(
      0,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  // Função para rolar para o fim
  void _rolarParaFim() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha Lista'),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_upward),
            color: Colors.white,
            onPressed: _rolarParaTopo,
          ),
          IconButton(
            icon: const Icon(Icons.arrow_downward),
            color: Colors.white,
            onPressed: _rolarParaFim,
          ),
        ],
      ),
      body: ListaWidget(
        itens: _itens,
        scrollController: _scrollController,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _adicionarItem(context),
        foregroundColor: Colors.white, // Cor do ícone (branca)
        child: const Icon(Icons.add),
      ),
    );
  }
}
