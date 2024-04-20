import 'package:flutter/material.dart';
import 'package:rodados_admin_app/src/screens/main_screen.dart';
import 'package:rodados_admin_app/src/screens/mensaje_screen.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => const MainScreen(),
  '/mensajes': (context) => const MensajesScreen(),
};
