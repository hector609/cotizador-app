import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const CotizadorApp());
}

class CotizadorApp extends StatelessWidget {
  const CotizadorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Cotizador Telcel',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1E88E5),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1E88E5),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      themeMode: ThemeMode.system,
      home: const HomeScreen(),
    );
  }
}

/// Placeholder home screen
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cotizador Telcel'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.phone_android,
              size: 80,
              color: Color(0xFF1E88E5),
            ),
            const SizedBox(height: 24),
            const Text(
              'Bienvenido al Cotizador Telcel',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Cotiza equipos Telcel desde tu teléfono',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 48),
            ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('✨ Próximo: Login Screen'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              icon: const Icon(Icons.login),
              label: const Text('Iniciar Sesión'),
            ),
          ],
        ),
      ),
    );
  }
}
