import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Card(
          child: Container(
            color: Colors.white,
            width: screenSize.width * 0.9,
            height: screenSize.height * 0.8,
            // padding: const EdgeInsets.all(8.0), // Espaciado interno
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    _buildCard('Estado de cuentas', Icons.account_balance),
                    _buildCard('Catálogo', Icons.book),
                  ],
                ),
                const SizedBox(height: 20), // Espacio entre las filas
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    _buildCard('Blog', Icons.rss_feed),
                    _buildCard('Ubicación', Icons.location_on),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCard(String title, IconData icon) {
    return Container(
      width: 120, // Ancho de la tarjeta interna
      height: 150, // Alto de la tarjeta interna
      decoration: const BoxDecoration(
        borderRadius:
            BorderRadius.all(Radius.circular(4.0)), // Bordes redondeados

        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFF1682f8),
            Color(0xFF68aefa),
            Color(0xFF84bdfb),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, size: 40.0, color: Colors.white), // Icono con color blanco
          const SizedBox(height: 10), // Espacio entre el icono y el texto
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white, // Color del texto
              fontSize: 20, // Tamaño del texto más grande
              fontWeight: FontWeight.bold, // Texto en negrita
            ),
          ),
        ],
      ),
    );
  }
}
