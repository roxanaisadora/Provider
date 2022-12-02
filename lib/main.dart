import 'package:flutter/material.dart';
import 'package:sesion03/pages/cambioprovider.dart';
import 'package:sesion03/pages/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=> CambioProvider())
    ],
    child:const MyApp()
    ),
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ChallengeWidget(),
    );
  }
}
