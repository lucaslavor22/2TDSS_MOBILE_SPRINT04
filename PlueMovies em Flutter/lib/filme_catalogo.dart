import 'package:flutter/material.dart';
import 'filme.dart';

class FilmeCatalogo extends StatelessWidget {
  final List<Filme> assistirDeNovo;
  final List<Filme> recomendados;
  final List<Filme> emAlta;

  const FilmeCatalogo({super.key, 
    required this.assistirDeNovo,
    required this.recomendados,
    required this.emAlta, required List filmes,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/images/back.png', height: 40, width: 40),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Image.asset(
          'assets/images/logo.png',
          fit: BoxFit.contain,
          height: 80,
          width: 80,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Image.asset('assets/images/menu.png', height: 40, width: 40),
            onPressed: () {
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Section(title: 'Assistir de Novo', filmes: assistirDeNovo),
            Section(title: 'Recomendados', filmes: recomendados),
            Section(title: 'Em Alta', filmes: emAlta),
          ],
        ),
      ),
    );
  }
}

class Section extends StatelessWidget {
  final String title;
  final List<Filme> filmes;

  const Section({super.key, required this.title, required this.filmes});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: filmes.map((filme) {
                return InkWell(
                  onTap: () {
                  },
                  child: Card(
                    color: Colors.grey[900],
                    margin: const EdgeInsets.all(10),
                    child: SizedBox(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AspectRatio(
                            aspectRatio: 2 / 3,
                            child: Image.asset(
                              filme.imagemUrl,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              filme.titulo,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              filme.descricao,
                              style: const TextStyle(color: Colors.white70),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
