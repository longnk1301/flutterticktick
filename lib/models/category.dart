class Category {
  String id;
  String name;
  bool? isChecked;

  // Category(this.id, this.name, this.isChecked); //constructor
  // var category = Category('1', 'All', true);

  Category({
    required this.id,
    required this.name,
    this.isChecked,
  }); //constructor
  // var category = Category(id: '1', name: 'All', isChecked: true);
}
