import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_exampless/provider/provider_function.dart';
import 'package:provider_exampless/screen/main_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ItemData(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}
