import 'package:flutter/material.dart';

class ListaJuegoScreen extends StatelessWidget {
  const ListaJuegoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2, // Número de columnas en la estantería
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildGameCard('Super Mario Bros', 'assets/images/mario.jpg'),
          _buildGameCard('The Legend of Zelda', 'assets/images/zelda.jpg'),
          _buildGameCard('Pokemon', 'assets/images/pokemon.jpg'),
          _buildGameCard('Minecraft', 'assets/images/minecraft.jpg'),
          _buildGameCard('Super Mario Bros', 'assets/images/mario.jpg'),
          _buildGameCard('The Legend of Zelda', 'assets/images/zelda.jpg'),
          _buildGameCard('Pokemon', 'assets/images/pokemon.jpg'),
          _buildGameCard('Minecraft', 'assets/images/minecraft.jpg'),
          _buildGameCard('Super Mario Bros', 'assets/images/mario.jpg'),
          // Agrega más juegos aquí
        ],
      ),
    );
  }

  Widget _buildGameCard(String title, String imagePath) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(
            10.0), // Ajusta el valor del padding según tus preferencias
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 2.0),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
