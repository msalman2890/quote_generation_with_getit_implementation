import 'package:flutter/material.dart';
import 'package:getit_implementation/locator.dart';

import '../domain/models/quote.dart';
import '../domain/quote_controller.dart';

class QuoteView extends StatefulWidget {
  const QuoteView({Key? key}) : super(key: key);

  @override
  State<QuoteView> createState() => _QuoteViewState();
}

class _QuoteViewState extends State<QuoteView> {
  Quote? displayQuote;

  Future<void> _changeQuote() async {
    //TODO 5: Locate the service from GetIt and call the method nextQuote method
    Quote quote = await locator.get<QuoteController>().getQuote();

    //TODO 7: Call the setState method to update the UI
    setState(() {
      displayQuote = quote;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quote View"),
      ),
      body: Center(
        child: displayQuote == null
            ? const Text("No Quote Available")
            : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('"${displayQuote?.sentence ?? ""}"',
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 20, fontStyle: FontStyle.italic)),
                    const SizedBox(height: 10),
                    Text("- ${displayQuote?.character ?? ""}")
                  ],
                ),
            ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeQuote,
        tooltip: 'Next',
        child: const Icon(Icons.arrow_forward_ios_rounded),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
