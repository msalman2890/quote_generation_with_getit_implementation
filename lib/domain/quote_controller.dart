
import '../locator.dart';
import '../repository/quote_repo.dart';
import 'models/quote.dart';

class QuoteController{
  Future<Quote> getQuote() async {
    /// TODO 6: Call the repo and return the quote
    return locator.get<QuoteRepo>().getQuote();
  }
}