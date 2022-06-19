class SearchModel {
  final String name;
  final String area;
  final String imageUrl;
  final String id;

  SearchModel(
      {required this.name,
      required this.area,
      required this.imageUrl,
      required this.id});

  factory SearchModel.fromJson(Map<String, dynamic> json) {
    return SearchModel(
        name: json['strMeal'],
        area: json['strArea'],
        imageUrl: json['strMealThumb'],
        id: json['idMeal']);
  }
}
