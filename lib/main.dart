import 'package:flutter/material.dart';

import 'features/crypto_list/crypto_list.dart';
import 'package:crypto_list/Screens/Crypto_coin_sreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: const Color.fromARGB(255, 37, 37, 37),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 37, 37, 37),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          iconTheme: IconThemeData(
            color: Colors.white60,
          ),
        ),
        dividerColor: Colors.white24,
        listTileTheme: const ListTileThemeData(iconColor: Colors.white),
        textTheme: TextTheme(
          bodyMedium: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
          labelSmall: TextStyle(
            color: Colors.white.withOpacity(0.6),
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
      ),
      routes: {
        '/': (context) =>
            const CryptoListScreen(title: 'Crypto List'),
        CryptoCoinScreen.route: (context) => CryptoCoinScreen(),
      },
    );
  }
}
