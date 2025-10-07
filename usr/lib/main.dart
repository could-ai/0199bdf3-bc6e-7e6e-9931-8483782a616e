import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dog Qwest',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFFD4AF37), // Or
        scaffoldBackgroundColor: const Color(0xFF2c2c2c), // Fond carte ancienne
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFD4AF37), // Or
          brightness: Brightness.dark,
          primary: const Color(0xFFD4AF37), // Or
          secondary: const Color(0xFF006A4E), // Vert Émeraude
          error: const Color(0xFFE0115F), // Rouge Rubis
          surface: const Color(0xFF3d3d3d),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontFamily: 'Trajan Pro', color: Color(0xFFD4AF37)),
          bodyLarge: TextStyle(fontFamily: 'Montserrat Alternates', color: Colors.white),
          labelLarge: TextStyle(fontFamily: 'Montserrat Alternates', fontSize: 16),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFD4AF37), // Or
            foregroundColor: Colors.black, // Texte noir sur boutons dorés
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dog Qwest',
          style: TextStyle(
            fontFamily: 'Trajan Pro',
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Logique pour "Jouer"
              },
              child: const Text('Jouer'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logique pour "Mes Cartes"
              },
              child: const Text('Mes Cartes'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logique pour "Infos & Légendes"
              },
              child: const Text('Infos & Légendes'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logique pour "Boutique"
              },
              child: const Text('Boutique'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logique pour "Classement Mondial"
              },
              child: const Text('Classement Mondial'),
            ),
          ],
        ),
      ),
    );
  }
}
