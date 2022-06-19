class RecipeDetailModel {
  final String strMeal;
  final String strCategory;
  final String strArea;
  final String strInstructions;
  final String strMealThumb;
  final String strIngredient1;
  final String strIngredient2;
  final String strIngredient3;
  final String strIngredient4;
  final String strIngredient5;
  final String strIngredient6;
  final String strIngredient7;
  final String strIngredient8;
  final String strIngredient9;
  final String strIngredient10;
  final String strIngredient11;
  final String strIngredient12;
  final String strIngredient13;
  final String strIngredient14;
  final String strIngredient15;
  final String strIngredient16;
  final String strIngredient17;
  final String strIngredient18;
  final String strIngredient19;
  final String strIngredient20;
  final String strMeasure1;
  final String strMeasure2;
  final String strMeasure3;
  final String strMeasure4;
  final String strMeasure5;
  final String strMeasure6;
  final String strMeasure7;
  final String strMeasure8;
  final String strMeasure9;
  final String strMeasure10;
  final String strMeasure11;
  final String strMeasure12;
  final String strMeasure13;
  final String strMeasure14;
  final String strMeasure15;
  final String strMeasure16;
  final String strMeasure17;
  final String strMeasure18;
  final String strMeasure19;
  final String strMeasure20;

  RecipeDetailModel({
    required this.strMeal,
    required this.strCategory,
    required this.strArea,
    required this.strInstructions,
    required this.strMealThumb,
    required this.strIngredient1,
    required this.strIngredient2,
    required this.strIngredient3,
    required this.strIngredient4,
    required this.strIngredient5,
    required this.strIngredient6,
    required this.strIngredient7,
    required this.strIngredient8,
    required this.strIngredient9,
    required this.strIngredient10,
    required this.strIngredient11,
    required this.strIngredient12,
    required this.strIngredient13,
    required this.strIngredient14,
    required this.strIngredient15,
    required this.strIngredient16,
    required this.strIngredient17,
    required this.strIngredient18,
    required this.strIngredient19,
    required this.strIngredient20,
    required this.strMeasure1,
    required this.strMeasure2,
    required this.strMeasure3,
    required this.strMeasure4,
    required this.strMeasure5,
    required this.strMeasure6,
    required this.strMeasure7,
    required this.strMeasure8,
    required this.strMeasure9,
    required this.strMeasure10,
    required this.strMeasure11,
    required this.strMeasure12,
    required this.strMeasure13,
    required this.strMeasure14,
    required this.strMeasure15,
    required this.strMeasure16,
    required this.strMeasure17,
    required this.strMeasure18,
    required this.strMeasure19,
    required this.strMeasure20,
  });

  factory RecipeDetailModel.fromJson(Map<String, dynamic> json) {
    return RecipeDetailModel(
      strMeal: json['meals'][0]['strMeal'],
      strCategory: json['meals'][0]['strCategory'],
      strArea: json['meals'][0]['strArea'],
      strInstructions: json['meals'][0]['strInstructions'],
      strMealThumb: json['meals'][0]['strMealThumb'],
      strIngredient1: json['meals'][0]['strIngredient1'],
      strIngredient2: json['meals'][0]['strIngredient2'],
      strIngredient3: json['meals'][0]['strIngredient3'],
      strIngredient4: json['meals'][0]['strIngredient4'],
      strIngredient5: json['meals'][0]['strIngredient5'],
      strIngredient6: json['meals'][0]['strIngredient6'],
      strIngredient7: json['meals'][0]['strIngredient7'],
      strIngredient8: json['meals'][0]['strIngredient8'],
      strIngredient9: json['meals'][0]['strIngredient9'],
      strIngredient10: json['meals'][0]['strIngredient10'],
      strIngredient11: json['meals'][0]['strIngredient11'],
      strIngredient12: json['meals'][0]['strIngredient12'],
      strIngredient13: json['meals'][0]['strIngredient13'],
      strIngredient14: json['meals'][0]['strIngredient14'],
      strIngredient15: json['meals'][0]['strIngredient15'],
      strIngredient16: json['meals'][0]['strIngredient16'],
      strIngredient17: json['meals'][0]['strIngredient17'],
      strIngredient18: json['meals'][0]['strIngredient18'],
      strIngredient19: json['meals'][0]['strIngredient19'],
      strIngredient20: json['meals'][0]['strIngredient20'],
      strMeasure1: json['meals'][0]['strMeasure1'],
      strMeasure2: json['meals'][0]['strMeasure2'],
      strMeasure3: json['meals'][0]['strMeasure3'],
      strMeasure4: json['meals'][0]['strMeasure4'],
      strMeasure5: json['meals'][0]['strMeasure5'],
      strMeasure6: json['meals'][0]['strMeasure6'],
      strMeasure7: json['meals'][0]['strMeasure7'],
      strMeasure8: json['meals'][0]['strMeasure8'],
      strMeasure9: json['meals'][0]['strMeasure9'],
      strMeasure10: json['meals'][0]['strMeasure10'],
      strMeasure11: json['meals'][0]['strMeasure11'],
      strMeasure12: json['meals'][0]['strMeasure12'],
      strMeasure13: json['meals'][0]['strMeasure13'],
      strMeasure14: json['meals'][0]['strMeasure14'],
      strMeasure15: json['meals'][0]['strMeasure15'],
      strMeasure16: json['meals'][0]['strMeasure16'],
      strMeasure17: json['meals'][0]['strMeasure17'],
      strMeasure18: json['meals'][0]['strMeasure18'],
      strMeasure19: json['meals'][0]['strMeasure19'],
      strMeasure20: json['meals'][0]['strMeasure20'],
    );
  }
}

/*
{
  "meals": [
    {
      "idMeal": "52772",
      "strMeal": "Teriyaki Chicken Casserole",
      "strCategory": "Chicken",
      "strArea": "Japanese",
      "strInstructions": "Preheat oven to 350° F. Spray a 9x13-inch baking pan with non-stick spray.\r\nCombine soy sauce, ½ cup water, brown sugar, ginger and garlic in a small saucepan and cover. Bring to a boil over medium heat. Remove lid and cook for one minute once boiling.\r\nMeanwhile, stir together the corn starch and 2 tablespoons of water in a separate dish until smooth. Once sauce is boiling, add mixture to the saucepan and stir to combine. Cook until the sauce starts to thicken then remove from heat.\r\nPlace the chicken breasts in the prepared pan. Pour one cup of the sauce over top of chicken. Place chicken in oven and bake 35 minutes or until cooked through. Remove from oven and shred chicken in the dish using two forks.\r\n*Meanwhile, steam or cook the vegetables according to package directions.\r\nAdd the cooked vegetables and rice to the casserole dish with the chicken. Add most of the remaining sauce, reserving a bit to drizzle over the top when serving. Gently toss everything together in the casserole dish until combined. Return to oven and cook 15 minutes. Remove from oven and let stand 5 minutes before serving. Drizzle each serving with remaining sauce. Enjoy!",
      "strMealThumb": "https://www.themealdb.com/images/media/meals/wvpsxx1468256321.jpg",
      "strTags": "Meat,Casserole",
      "strYoutube": "https://www.youtube.com/watch?v=4aZr5hZXP_s",
      "strIngredient1": "soy sauce",
      "strIngredient2": "water",
      "strIngredient3": "brown sugar",
      "strIngredient4": "ground ginger",
      "strIngredient5": "minced garlic",
      "strIngredient6": "cornstarch",
      "strIngredient7": "chicken breasts",
      "strIngredient8": "stir-fry vegetables",
      "strIngredient9": "brown rice",
      "strIngredient10": "",
      "strIngredient11": "",
      "strIngredient12": "",
      "strIngredient13": "",
      "strIngredient14": "",
      "strIngredient15": "",
      "strIngredient16": null,
      "strIngredient17": null,
      "strIngredient18": null,
      "strIngredient19": null,
      "strIngredient20": null,
      "strMeasure1": "3/4 cup",
      "strMeasure2": "1/2 cup",
      "strMeasure3": "1/4 cup",
      "strMeasure4": "1/2 teaspoon",
      "strMeasure5": "1/2 teaspoon",
      "strMeasure6": "4 Tablespoons",
      "strMeasure7": "2",
      "strMeasure8": "1 (12 oz.)",
      "strMeasure9": "3 cups",
      "strMeasure10": "",
      "strMeasure11": "",
      "strMeasure12": "",
      "strMeasure13": "",
      "strMeasure14": "",
      "strMeasure15": "",
      "strMeasure16": null,
      "strMeasure17": null,
      "strMeasure18": null,
      "strMeasure19": null,
      "strMeasure20": null,
      "strSource": null,
      "strImageSource": null,
    }
  ]
}
 */

