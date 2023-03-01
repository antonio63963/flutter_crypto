import 'package:crypto_list/repositories/crypto_coins/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:crypto_list/features/crypto_coin/crypto_coin.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({
    super.key,
    required this.coin,
  });

  final CryptoCoin coin;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      // leading: SvgPicture.asset(
      //   'assets/svg/bitcoin_logo.svg',
      //   height: 35,
      //   width: 35,
      // ),
      leading: Image.network(coin.picture),
      title: Text(
        coin.name,
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text(
        '\$${coin.priceInUSD}',
        style: theme.textTheme.labelSmall,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.of(context)
            .pushNamed(CryptoCoinScreen.route, arguments: 'Bitcoin');
      },
    );
  }
}
