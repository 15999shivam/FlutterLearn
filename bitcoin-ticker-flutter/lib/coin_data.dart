import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const url = "https://apiv2.bitcoinaverage.com/indices/global/ticker";

class CoinData {
  String cryptoType;
  String curr;
  double currentPrice;

  CoinData(this.cryptoType);
  String getURL() {
    return url + '/' + cryptoType + curr;
  }

  Future getData() async {
    print(getURL());
    http.Response response = await http.get(getURL());
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
  }

  Future<double> getCurrentPrice() async {
    var result = await getData();
//    print(result["last"]);
    return result["last"];
  }
}
