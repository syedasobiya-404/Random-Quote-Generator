import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:randomquotegenerator/provider/Quote_Provider.dart';

class QuotesScreen extends StatefulWidget {
  const QuotesScreen({super.key});

  @override
  State<QuotesScreen> createState() => _QuotesScreenState();
}

class _QuotesScreenState extends State<QuotesScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<QuoteProvider>(context, listen: false).fetchQuote();
  }

  @override
  Widget build(BuildContext context) {
    final quoteProvider = Provider.of<QuoteProvider>(context);
    Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Inspire Me',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Center(
            child: quoteProvider.quote.isEmpty
                ? CircularProgressIndicator()
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.format_quote_rounded,
                        size: 40,
                        color: Colors.deepPurple,
                      ),
                      SizedBox(height: 20),
                      Text(
                        '"${quoteProvider.quote}"',
                        style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                          color: Colors.black87,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      Text(
                        '"${quoteProvider.author}"',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 40),
                      ElevatedButton.icon(
                        onPressed: () {
                          quoteProvider.fetchQuote();
                        },
                        icon: Icon(Icons.refresh),
                        label: Text('New Quote'),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
