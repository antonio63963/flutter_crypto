import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';

import '../models/crypto_coin.dart';

class CryptoCoinsRepository {
  Future<List<CryptoCoin>> getCoinsList() async {
    final response = await Dio().get(
        'https://min-api.cryptocompare.com/data/pricemulti?fsyms=BTC,ETH,BNB,AVAX&tsyms=USD');
    debugPrint(response.toString());
    final data = response.data as Map<String, dynamic>;
    final coinsList = data.entries
        .map(
          (e) => CryptoCoin(
              name: e.key, priceInUSD: (e.value as Map<String, dynamic>)['USD']),
        )
        .toList();
    return coinsList;
  }
}
