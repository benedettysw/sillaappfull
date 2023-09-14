import 'package:flutter/material.dart';
import 'session/login.dart';
import 'session/registro.dart';
import 'home/bar_opcion.dart';
import 'home/home.dart';

// import 'package:flutter/services.dart' show rootBundle;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'mi app sisi',
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/registro': (context) => const registroPage(),
        '/bar_option': (context) => const bar_opcionPage(),
        '/app': (context) => const DemoMWAppBarScreen(),
        // '/1': (context) => const LFutureBuilder(),
        // '/pagos': (context) => const DemoMWTextFormFieldScreen(),
      },
    );
  }
}
