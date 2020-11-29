import 'package:currency_converter/app/controllers/home_controller.dart';
import 'package:currency_converter/app/models/currency.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final toText = TextEditingController();
  final fromText = TextEditingController();

  test('should convert currency from real to dolar', () {
    final homeController = HomeController(
      currencies: Currency.currencies,
      toCurrency: Currency.currencies[0],
      fromCurrency: Currency.currencies[1],
      toText: toText,
      fromText: fromText,
    );

    toText.text = '2.0';

    homeController.covert();

    expect(fromText.text, '0.36');
  });

  test('should convert currency from dolar to real', () {
    toText.text = '1';

    final homeController = HomeController(
      currencies: Currency.currencies,
      toCurrency: Currency.currencies[1],
      fromCurrency: Currency.currencies[0],
      toText: toText,
      fromText: fromText,
    );

    homeController.covert();

    expect(fromText.text, '5.65');
  });
}
