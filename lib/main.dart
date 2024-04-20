import 'package:flutter/material.dart';
import 'package:rodados_admin_app/src/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Rodados Admin App', initialRoute: '/', routes: routes);
  }
}
