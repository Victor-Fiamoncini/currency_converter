import 'package:currency_converter/app/controllers/home_controller.dart';
import 'package:currency_converter/app/widgets/currency_box.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home() {
    homeController = HomeController(fromText: fromText, toText: toText);
  }

  final toText = TextEditingController();
  final fromText = TextEditingController();

  HomeController homeController;

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
          child: Column(
            children: [
              Image.asset(
                'assets/logo.png',
                width: 180,
                height: 180,
              ),
              const SizedBox(height: 40),
              CurrencyBox(),
              const SizedBox(height: 10),
              CurrencyBox(),
              const SizedBox(height: 30),
              FlatButton(
                onPressed: () {},
                padding: const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 30,
                ),
                shape: Border(
                  bottom: BorderSide(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                child: const Text(
                  'Coverter',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
