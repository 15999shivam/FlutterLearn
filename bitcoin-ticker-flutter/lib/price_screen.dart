import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'coin_data.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:io' show Platform;

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'INR';
  int bitPrice = 0;
  int ethPrice = 0;
  int ltcPrice = 0;
  double sizeload = 0.0;
  DropdownButton<String> getAndroidDropdown() {
    List<DropdownMenuItem<String>> list = [];
    for (int i = 0; i < currenciesList.length; i++) {
      DropdownMenuItem<String> item = DropdownMenuItem<String>(
        child: Text(currenciesList[i]),
        value: currenciesList[i],
      );
      list.add(item);
    }

    return DropdownButton<String>(
        value: selectedCurrency,
        items: list,
        onChanged: (val) {
          setState(() {
            selectedCurrency = val;
            setCoinData();
          });
          print(val);
        });
  }

  CupertinoPicker iOSPicker() {
    List<Widget> list = [];
    for (String currency in currenciesList) {
      list.add(
        Text(currency),
      );
    }
    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 32.0,
      onSelectedItemChanged: (index) {
        selectedCurrency = currenciesList[index];
        setCoinData();
      },
      children: list,
    );
  }

  Widget getPicker() {
    if (Platform.isIOS) {
      return iOSPicker();
    } else {
      return getAndroidDropdown();
    }
  }

  void setCoinData() async {
    print(selectedCurrency);
    bitCoinData.curr = selectedCurrency;
    ethCoinData.curr = selectedCurrency;
    ltcCoinData.curr = selectedCurrency;
    sizeload = 50.0;
    setState(() {});
    bitPrice = (await bitCoinData.getCurrentPrice()).toInt();
    ethPrice = (await ethCoinData.getCurrentPrice()).toInt();
    ltcPrice = (await ltcCoinData.getCurrentPrice()).toInt();
    setState(() {
      sizeload = 0.0;
    });
  }

  CoinData bitCoinData = CoinData("BTC");
  CoinData ethCoinData = CoinData("ETH");
  CoinData ltcCoinData = CoinData("LTC");
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setCoinData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Stack(
        children: <Widget>[
          DisplayScreen(),
//          SpinKitDoubleBounce(
//            color: Colors.black,
//            size: sizeload,
//          ),
        ],
      ),
    );
  }

  Column DisplayScreen() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Currency(
            Price: bitPrice,
            selectedCurrency: selectedCurrency,
            cryptoType: bitCoinData.cryptoType),
        Currency(
          Price: ethPrice,
          selectedCurrency: selectedCurrency,
          cryptoType: ethCoinData.cryptoType,
        ),
        Currency(
          Price: ltcPrice,
          selectedCurrency: selectedCurrency,
          cryptoType: ltcCoinData.cryptoType,
        ),
        Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                getPicker(),
                SizedBox(
                  width: 15.0,
                ),
                SpinKitChasingDots(
                  color: Colors.white,
                  size: sizeload,
                )
              ],
            )),
      ],
    );
  }
}

class Currency extends StatelessWidget {
  const Currency({
    Key key,
    @required this.Price,
    @required this.selectedCurrency,
    @required this.cryptoType,
  }) : super(key: key);

  final int Price;
  final String selectedCurrency;
  final String cryptoType;

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
            '1 $cryptoType = $Price $selectedCurrency',
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
