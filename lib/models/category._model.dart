class CategoryModel {
  final String id;
  final String title;
  final String images;

  CategoryModel({required this.id, required this.title, required this.images});
}

class Categories {
  List<CategoryModel> _categoryList = [
    CategoryModel(
        id: 'c1', title: 'Оила кредит', images: 'assets/images/vector.png'),
    CategoryModel(
        id: 'c2',
        title: 'Одежда, обувь и аксессуары',
        images: 'assets/images/odj.png'),
    CategoryModel(id: 'c3', title: 'Посуда', images: 'assets/images/bowl.jpg'),
  ];

  List<CategoryModel> get categoryList {
    return _categoryList;
  }
}
