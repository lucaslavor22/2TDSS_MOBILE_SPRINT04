import 'package:flutter/material.dart';
import 'filme_catalogo.dart';
import 'filme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catálogo de Filmes',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: FilmeCatalogo(
        assistirDeNovo: assistirDeNovo,
        recomendados: recomendados,
        emAlta: emAlta, filmes: const [],
      ),
    );
  }
}
