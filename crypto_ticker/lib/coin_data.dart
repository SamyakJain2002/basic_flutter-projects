import 'dart:convert';
import 'package:http/http.dart' as http;

const apikey = 'E7D0D67B-C48E-4F74-A944-602232375262';
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
  'ZAR',
  'USD',
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  CoinData();

  Future getCoindata(String selectedcurrency) async {
    Map<String, String> map = {};
    for (String crypto in cryptoList) {
      http.Response response = await http.get(Uri.parse(
          'https://rest.coinapi.io/v1/exchangerate/BTC/$selectedcurrency?apikey=E7D0D67B-C48E-4F74-A944-602232375262'));
      var data = jsonDecode(response.body);
      var value = data['rate'];
      map[crypto] = value.toStringAsFixed(0);
    }

    return map;
  }
}
