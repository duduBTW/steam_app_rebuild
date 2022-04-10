import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:steam/providers/login.dart';

// providers
import 'constants/theme.dart';

// pages
import 'package:steam/pages/login.dart';
import 'package:steam/pages/inicio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<LoginProvider>(create: (_) => LoginProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Steam',
        theme: getTheme(),
        home: Inicio(),
      ),
    );
  }
}
