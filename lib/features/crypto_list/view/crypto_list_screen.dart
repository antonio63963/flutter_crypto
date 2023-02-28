import 'package:crypto_list/repositories/crypto_coins/crypto_coins_repository.dart';
import 'package:crypto_list/repositories/models/crypto_coin.dart';
import 'package:flutter/material.dart';

import 'package:crypto_list/features/crypto_list/widgets/widgets.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key, required this.title});

  final String title;

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  List<CryptoCoin>? _cryptoCoinsList;

  @override
  void initState() {
    super.initState();
    _loadCryptoCoins();
  }

  Future<void> _loadCryptoCoins() async {
    _cryptoCoinsList = await CryptoCoinsRepository().getCoinsList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _cryptoCoinsList == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.separated(
              separatorBuilder: (context, index) => Divider(),
              itemCount: _cryptoCoinsList!.length,
              itemBuilder: (context, index) {
                final coin = _cryptoCoinsList![index];
                return CryptoCoinTile(
                  coin: coin,
                );
              },
            ),
    );
  }
}
