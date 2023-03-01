class CryptoCoin {
  const CryptoCoin({
    required this.name,
    required this.priceInUSD,
    required this.picture,
  });

  final String name;
  final double priceInUSD;
  final String picture;

  @override
  String toString() {
    return '$name: { priceInUSD: $priceInUSD, picture: $picture }';
  }
}
