import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class QuoteProvider with ChangeNotifier {
  String quote = '';
  String author = '';

  String get quotes => quote;
  String get authors => author;

  Future<void> fetchQuote() async {
    final url = Uri.parse('https://zenquotes.io/api/random');
  
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        quote = data[0]['q'];
        author = data[0]['a'];
        notifyListeners();
      } else {
        quote = "Failed to fetch quote.";
        author = "";
        notifyListeners();
      }
    } catch (e, stackTrace) {
      quote = "Error: $e";
      author = "";
      print('Error: $e');
      print('StackTrace: $stackTrace');
      notifyListeners();
    }
  }
}
