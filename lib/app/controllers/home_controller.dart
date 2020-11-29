import 'package:currency_converter/app/models/currency.dart';
import 'package:flutter/material.dart';

class HomeController {
  HomeController() {
    currencies = Currency.currencies;
    toCurrency = currencies[0];
    fromCurrency = currencies[0];
  }

  TextEditingController toText = TextEditingController();
  TextEditingController fromText = TextEditingController();
  List<Currency> currencies;
  Currency toCurrency;
  Currency fromCurrency;

  void covert() {
    final parsedInputValue = double.tryParse(toText.text) ?? 1;

    final convertionTypes = {
      'Real': () => parsedInputValue * toCurrency.real,
      'Dolar': () => parsedInputValue * toCurrency.dolar,
      'Euro': () => parsedInputValue * toCurrency.euro,
      'Bitcoin': () => parsedInputValue * toCurrency.bitcoin,
    };

    final convertedValue = convertionTypes[parsedInputValue]() ?? 0;

    fromText.text = convertedValue.toStringAsFixed(2);
  }
}
