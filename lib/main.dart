import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:randomquotegenerator/provider/Quote_Provider.dart';
import 'package:randomquotegenerator/theme/theme.dart';
import 'package:randomquotegenerator/view/Quotes_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => QuoteProvider(),
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
      title: 'Random Quote Generator',
      theme: theme,
      home: QuotesScreen(),
    );
  }
}
