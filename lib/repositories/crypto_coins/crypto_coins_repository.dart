import 'dart:developer';

import 'package:crypto_list/repositories/crypto_coins/abstract_coins_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';

import 'models/models.dart';

class CryptoCoinsRepository implements AbstractCoinRepository {
  Future<List<CryptoCoin>> getCoinsList() async {
    final response = await Dio().get(
        'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB,AVAX&tsyms=USD');
    debugPrint(response.toString());
    final data = response.data as Map<String, dynamic>;
    final dataRaw = data['RAW'] as Map<String, dynamic>;
    final coinsList = dataRaw.entries.map((e) {
      final usdData = (e.value['USD']) as Map<String, dynamic>;
      return CryptoCoin(
        name: e.key,
        priceInUSD: (usdData['PRICE']),
        picture: 'https://cryptocompare.com/${usdData['IMAGEURL']}',
      );
    }).toList();
    return coinsList;
  }
}
