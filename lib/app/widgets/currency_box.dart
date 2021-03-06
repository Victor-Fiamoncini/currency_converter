import 'package:currency_converter/app/models/currency.dart';
import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  const CurrencyBox({
    this.currencies,
    this.textEditingController,
    this.onChanged,
    this.selectedCurrency,
    this.hint,
    this.readOnly,
  });

  final List<Currency> currencies;
  final TextEditingController textEditingController;
  final void Function(Currency currency) onChanged;
  final Currency selectedCurrency;
  final Text hint;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SizedBox(
            height: 56,
            child: DropdownButton(
              value: selectedCurrency,
              hint: hint,
              isExpanded: true,
              iconEnabledColor: Theme.of(context).primaryColor,
              focusColor: Theme.of(context).primaryColor,
              underline: Container(
                height: 1,
                color: Theme.of(context).primaryColor,
              ),
              items: currencies.map((currency) {
                return DropdownMenuItem<Currency>(
                  value: currency,
                  child: Text(
                    currency.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                );
              }).toList(),
              onChanged: onChanged,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: TextField(
            controller: textEditingController,
            readOnly: readOnly,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
