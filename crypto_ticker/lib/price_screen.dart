import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;
import 'coin_data.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  Map<String, String> exchange = {};
  bool wait = false;

  void getdata() async {
    for (int i = 0; i < 3; i++) {
      CoinData data = CoinData();
      wait = true;
      try {
        var value = await data.getCoindata(selectedCurrency);
        wait = false;
        setState(() {
          exchange = value;
        });
      } catch (e) {
        print(e);
      }
    }
  }

  String selectedCurrency = 'AUD';

  DropdownButton getDropDown() {
    List<DropdownMenuItem<String>> dropdownItems = [];
    for (String i in currenciesList) {
      var item = DropdownMenuItem(
        child: Text(i),
        value: i,
      );
      dropdownItems.add(item);
    }
    return DropdownButton<String>(
      value: selectedCurrency,
      items: dropdownItems,
      onChanged: (value) {
        setState(() {
          selectedCurrency = value!;
          getdata();
        });
      },
    );
  }

  CupertinoPicker getPicker() {
    List<Text> pickerItem = [];
    for (String i in currenciesList) {
      var item = Text(
        i,
        style: TextStyle(color: Colors.white),
      );
      pickerItem.add(item);
    }
    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 32,
      onSelectedItemChanged: (selectedIndex) {
        setState(() {
          selectedCurrency = currenciesList[selectedIndex];
          getdata();
        });
      },
      children: pickerItem,
    );
  }

  Column cards() {
    List<CryptoCard> cryptocards = [];
    for (String typecoin in cryptoList) {
      cryptocards.add(CryptoCard(
          crypto: typecoin,
          exchangevalue: (wait) ? '?' : exchange[typecoin]!,
          selectedCurrency: selectedCurrency));
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: cryptocards,
    );
  }

  @override
  void initState() {
    super.initState();
    getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('🤑 Coin Ticker')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          cards(),
          Container(
            height: 120.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: (Platform.isIOS) ? getPicker() : getDropDown(),
          ),
        ],
      ),
    );
  }
}

class CryptoCard extends StatelessWidget {
  CryptoCard({
    required this.crypto,
    required this.exchangevalue,
    required this.selectedCurrency,
  });

  final String exchangevalue;
  final String selectedCurrency;
  final String crypto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
      child: Card(
        color: Colors.lightBlueAccent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
          child: Text(
            '1 $crypto = $exchangevalue $selectedCurrency',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
