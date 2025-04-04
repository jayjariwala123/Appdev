class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "iPhone 12 Pro",
      desc: "Apple iPhone 12 Pro (128GB) - Silver",
      price: 999.99,
      color: "#000000",
      image: "https://fonezone.me/cdn/shop/products/ip12pmxsvr_af9b0e4e-8cb4-4d2b-b821-adc0eefd61c8.jpg?v=1719932393",
    ),
  ];
}



class Item{
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });
}

