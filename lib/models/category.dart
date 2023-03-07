import '../common.widgets/category_icon.dart';

class Category {
  String id;
  String name;
  final CategoryIcon icon;
  bool isChecked;

  // Category(this.id, this.name, this.isChecked); //constructor
  // var category = Category('1', 'All', true);

  Category({
    required this.id,
    required this.name,
    required this.icon,
    this.isChecked = true,
  }); //constructor
  // var category = Category(id: '1', name: 'All', isChecked: true);

  toggleCheckbox() {
    isChecked = !isChecked;
  }
}
