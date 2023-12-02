import 'package:flutter/material.dart';
import 'package:flutter_api_yesorno/presentacion/home_screen.dart';
import 'package:flutter_api_yesorno/providers/respuesta_provider.dart';
import 'package:provider/provider.dart';


void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>RespuestaProvider())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home()
      ),
    );
  }
}
