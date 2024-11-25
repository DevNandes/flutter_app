import 'package:flutter/material.dart';
import './screens/home_page.dart';

void main() {
  runApp(const MeuApp());
}

// Classe principal do aplicativo
class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Fundo do app branco
        scaffoldBackgroundColor: Colors.white,
        // Design para o titulo
        appBarTheme: const AppBarTheme(
          // Cor azul titulo
          backgroundColor: Colors.blue,
          // Estilo para fonte do titulo
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Cor azul para botoes Flutuantes como o +
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.blue,
        ),
      ),
      // Tela Inicial
      home: const HomePage(),
    );
  }
}
