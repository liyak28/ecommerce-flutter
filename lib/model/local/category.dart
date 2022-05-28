class Category {
  int id;
  String name;

  Category({this.id = 0, this.name = ''});
}

List getCategory = [
  Category(id: 1, name: 'All'),
  Category(id: 2, name: 'Running'),
  Category(id: 3, name: 'Training'),
  Category(id: 4, name: 'Basket'),
  Category(id: 5, name: 'Volley'),
];
