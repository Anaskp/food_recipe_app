import 'package:flutter/material.dart';

import '../model/model.dart';
import 'widgets.dart';

class SlidingPanelBuilder extends StatelessWidget {
  final RecipeDetailModel? response;
  final ScrollController scrollController;

  const SlidingPanelBuilder(
      {super.key, this.response, required this.scrollController});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        controller: scrollController,
        children: [
          Center(
            child: Container(
              width: 40,
              height: 5,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            response!.strMeal,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xff042628),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
              text: 'Category ',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff556063),
              ),
              children: [
                TextSpan(
                  text: response!.strCategory,
                  style: const TextStyle(
                    color: Color(0xff909498),
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              text: 'Country ',
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Color(0xff556063),
              ),
              children: [
                TextSpan(
                  text: response!.strArea,
                  style: const TextStyle(
                    color: Color(0xff909498),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Ingredients',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xff042628),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          IngredientSection(response: response),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Instructions',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xff042628),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            response!.strInstructions,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
