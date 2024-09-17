class Crypto {
  final String image;
  final String name;
  final String subname;
  final String price;
  final String change;

  Crypto({
    required this.image,
    required this.name,
    required this.subname,
    required this.price,
    required this.change,
  });

  factory Crypto.fromJson(Map<String, dynamic> json) {
    return Crypto(
      image: json['image'] as String,
      name: json['name'] as String,
      subname: json['subname'] as String,
      price: json['price'] as String,
      change: json['change'] as String,
    );
  }

  // Convert object to JSON
  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'name': name,
      'subname': subname,
      'price': '\$$price',
      'change': '$change%',
    };
  }
}
