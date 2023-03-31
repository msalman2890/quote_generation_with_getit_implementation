import 'dart:convert';

import 'package:http/http.dart' as http;
import '../domain/models/quote.dart';

class QuoteRepo {
  Future<Quote> getQuote() async {
    http.Response response =
        await http.get(Uri.parse("https://some-random-api.ml/animu/quote"));
    Map<String, dynamic> singleQuoteJson = jsonDecode(response.body);
    return Quote.fromJson(singleQuoteJson);
  }
}
