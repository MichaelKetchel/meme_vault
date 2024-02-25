import 'package:flutter/material.dart';
import 'package:meme_vault/providers/meme_provider.dart';
import 'package:provider/provider.dart';

import 'pages/home_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (context) => MemeProvider())
      ],
      child: const MemeVaultApp()
    )
  );
}

class MemeVaultApp extends StatelessWidget {
  const MemeVaultApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meme Vault',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


