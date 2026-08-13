class ProudactModel {
  final String name;
  final double price;
  final String des;
  final String image;
  ProudactModel({
    required this.name,
    required this.price,
    required this.des,
    required this.image,
  });
  static List<ProudactModel> proudact = [
    ProudactModel(
      name: "October",
      price: 100,
      des: "reversible angora cardigan",
      image: "assets/product/product1.png",
    ),
      ProudactModel(
      name: "October",
      price: 50,
      des: "reversible angora cardigan",
      image: "assets/product/product2.png",
    ),
      ProudactModel(
      name: "October",
      price: 120,
      des: "reversible angora cardigan",
      image: "assets/product/product3.png",
    ),
      ProudactModel(
      name: "October",
      price: 60,
      des: "reversible angora cardigan",
      image: "assets/product/product4.png",
    ),
      ProudactModel(
      name: "October",
      price: 70,
      des: "reversible angora cardigan",
      image: "assets/product/product5.png",
    ),
      ProudactModel(
      name: "October",
      price: 80,
      des: "reversible angora cardigan",
      image: "assets/product/product6.png",
    ),
  ];
}
