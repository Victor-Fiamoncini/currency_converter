class Currency {
  Currency({this.name, this.real, this.dolar, this.euro, this.bitcoin});

  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;

  static List<Currency> get currencies {
    return [
      Currency(
        name: 'Real',
        real: 1,
        dolar: 0.18,
        euro: 0.15,
        bitcoin: 0.000016,
      ),
      Currency(
        name: 'Dolar',
        real: 5.65,
        dolar: 1,
        euro: 0.85,
        bitcoin: 0.000088,
      ),
      Currency(
        name: 'Euro',
        real: 6.62,
        dolar: 1.17,
        euro: 1,
        bitcoin: 0.00010,
      ),
      Currency(
        name: 'Bitcoin',
        real: 64116.51,
        dolar: 11351.30,
        euro: 9689.54,
        bitcoin: 1,
      )
    ];
  }
}
