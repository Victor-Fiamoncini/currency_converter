import 'package:currency_converter/app/models/currency.dart';
import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  const CurrencyBox({
    this.currencies,
    this.textEditingController,
    this.onChanged,
  });

  final List<Currency> currencies;
  final TextEditingController textEditingController;
  final void Function(Currency) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SizedBox(
            height: 56,
            child: DropdownButton<Currency>(
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
              onChanged: (value) {},
            ),
          ),
        ),
        const SizedBox(width: 10),
        const Expanded(
          flex: 2,
          child: TextField(
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
