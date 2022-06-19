class CategoryModel {
  final String catname;
  final String catImage;

  CategoryModel({
    required this.catname,
    required this.catImage,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      catname: json['strCategory'],
      catImage: json['strCategoryThumb'],
    );
  }
}
