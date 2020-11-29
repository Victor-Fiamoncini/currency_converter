import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SizedBox(
            height: 56,
            child: DropdownButton(
              isExpanded: true,
              iconEnabledColor: Theme.of(context).primaryColor,
              focusColor: Theme.of(context).primaryColor,
              underline: Container(
                height: 1,
                color: Theme.of(context).primaryColor,
              ),
              items: [
                DropdownMenuItem(
                  child: Text(
                    'Real',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
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
