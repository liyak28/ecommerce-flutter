class Product {
  String name;
  String category;
  String price;
  String image;

  Product({
    this.name = "",
    this.category = "",
    this.price = "",
    this.image = "",
  });
}

List getProduct = [
  Product(
      name: 'Court Vision 2.0',
      category: 'hiking',
      price: '1.500K',
      image: 'assets/img_shoes_sample.png'),
  Product(
      name: 'Fortarun Running Shoes 2020',
      category: 'training',
      price: '600K',
      image: 'assets/img_shoes_sample.png'),
  Product(
      name: 'Supernove Running Shoes',
      category: 'training',
      price: '700K',
      image: 'assets/img_shoes_sample.png'),
  Product(
      name: 'Ultraboots 20 Shoes',
      category: 'Running',
      price: '800K',
      image: 'assets/img_shoes_sample.png'),
];
