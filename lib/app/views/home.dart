import 'package:currency_converter/app/controllers/home_controller.dart';
import 'package:currency_converter/app/models/currency.dart';
import 'package:currency_converter/app/widgets/currency_box.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final toText = TextEditingController();
  final fromText = TextEditingController();

  HomeController homeController;
  TextStyle hintStyle;

  @override
  void initState() {
    super.initState();

    homeController = HomeController(
      currencies: Currency.currencies,
      fromText: fromText,
      toText: toText,
    );

    hintStyle = const TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    );
  }

  void onConvertButtonPressed() {
    homeController.covert();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 80,
            left: 60,
            right: 60,
            bottom: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 180,
                  height: 180,
                ),
                const SizedBox(height: 40),
                CurrencyBox(
                  textEditingController: toText,
                  currencies: homeController.currencies,
                  onChanged: (currency) {
                    setState(() => homeController.toCurrency = currency);
                  },
                  selectedCurrency: homeController.toCurrency,
                  hint: Text(
                    'From',
                    style: hintStyle,
                  ),
                  readOnly: false,
                ),
                const SizedBox(height: 10),
                CurrencyBox(
                  textEditingController: fromText,
                  currencies: homeController.currencies,
                  onChanged: (currency) {
                    setState(() => homeController.fromCurrency = currency);
                  },
                  selectedCurrency: homeController.fromCurrency,
                  hint: Text(
                    'To',
                    style: hintStyle,
                  ),
                  readOnly: true,
                ),
                const SizedBox(height: 30),
                FlatButton(
                  onPressed: () => onConvertButtonPressed(),
                  padding: const EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 30,
                  ),
                  shape: Border(
                    bottom: BorderSide(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  child: Text(
                    'Convert',
                    style: hintStyle,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
