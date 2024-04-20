import 'package:flutter/material.dart';
import 'package:rodados_admin_app/src/screens/MainScreens/home_scree.dart';
import 'package:rodados_admin_app/src/screens/mensaje_screen.dart';

enum AppSection { mensajes, perfil, configuraciones, proximamente, home }

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 2;

  final List<Widget> _widgetOptions = <Widget>[
    const Text('Pantalla de Perfil'),
    const MensajesScreen(),
    const HomeScreen(),
    const Text('Pantalla de historial de factura'),
    const Text('Pantalla de Proximamente'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: const Color.fromARGB(255, 60, 143, 202),
          child: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Perfil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Mensajes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.import_export),
              label: 'Historias de transaciones',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.logo_dev),
              label: 'Proximamente',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue[700],
          unselectedItemColor: Colors.grey,
          selectedFontSize: 14,
          unselectedFontSize: 12,
          onTap: _onItemTapped,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.shifting,
        ),
      ),
    );
  }
}
