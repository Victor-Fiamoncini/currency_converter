import 'package:currency_converter/app/models/currency.dart';
import 'package:flutter/material.dart';

class HomeController {
  HomeController({
    this.currencies,
    this.toCurrency,
    this.fromCurrency,
    this.toText,
    this.fromText,
  });

  final TextEditingController toText;
  final TextEditingController fromText;
  final List<Currency> currencies;
  final Currency toCurrency;
  final Currency fromCurrency;

  void covert() {
    final inputValue = toText.text.replaceAll(',', '.');
    final parsedInputValue = double.tryParse(inputValue) ?? 1;

    final convertionTypes = {
      'Real': () => parsedInputValue * toCurrency.real,
      'Dolar': () => parsedInputValue * toCurrency.dolar,
      'Euro': () => parsedInputValue * toCurrency.euro,
      'Bitcoin': () => parsedInputValue * toCurrency.bitcoin,
    };

    final convertedValue = convertionTypes[fromCurrency.name]();

    fromText.text = convertedValue.toStringAsFixed(2);
  }
}
