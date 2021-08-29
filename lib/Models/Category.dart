

class Category{
  final int? id;
  final String  name;
  Category({
    required this.id,
    required this.name,
  });
  static List<Category> categories = [
    Category(
      id: 2,
      name: 'CLOTHES',
    ),
    Category(
      id: 3,
      name: 'HANDBAGS',
    ),
    Category(
      id: 1,
      name: 'SHOES',
    )

  ];
}