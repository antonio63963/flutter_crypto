import 'models/models.dart';

abstract class AbstractCoinRepository {
  Future<List<CryptoCoin>> getCoinsList();
}
