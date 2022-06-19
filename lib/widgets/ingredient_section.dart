import 'package:flutter/material.dart';
import 'package:food_reciepe/widgets/widgets.dart';

import '../model/model.dart';

class IngredientSection extends StatelessWidget {
  final RecipeDetailModel? response;

  const IngredientSection({super.key, required this.response});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          if (response!.strIngredient1 != "" &&
              response!.strIngredient1 != null) ...[
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IngredientWidget(
                  strIngredient: response!.strIngredient1,
                  strMeasure: response!.strMeasure1),
            )
          ] else ...[
            const SizedBox.shrink(),
          ],
          if (response!.strIngredient2 != "" &&
              response!.strIngredient2 != null) ...[
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IngredientWidget(
                  strIngredient: response!.strIngredient2,
                  strMeasure: response!.strMeasure2),
            )
          ] else ...[
            const SizedBox.shrink(),
          ],
          if (response!.strIngredient2 != "" &&
              response!.strIngredient2 != null) ...[
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IngredientWidget(
                  strIngredient: response!.strIngredient3,
                  strMeasure: response!.strMeasure3),
            )
          ] else ...[
            const SizedBox.shrink(),
          ],
          if (response!.strIngredient3 != "" &&
              response!.strIngredient3 != null) ...[
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IngredientWidget(
                  strIngredient: response!.strIngredient4,
                  strMeasure: response!.strMeasure4),
            )
          ] else ...[
            const SizedBox.shrink(),
          ],
          if (response!.strIngredient5 != "" &&
              response!.strIngredient5 != null) ...[
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IngredientWidget(
                  strIngredient: response!.strIngredient5,
                  strMeasure: response!.strMeasure5),
            )
          ] else ...[
            const SizedBox.shrink(),
          ],
          if (response!.strIngredient6 != "" &&
              response!.strIngredient6 != null) ...[
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IngredientWidget(
                  strIngredient: response!.strIngredient6,
                  strMeasure: response!.strMeasure6),
            )
          ] else ...[
            const SizedBox.shrink(),
          ],
          if (response!.strIngredient7 != "" &&
              response!.strIngredient7 != null) ...[
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IngredientWidget(
                  strIngredient: response!.strIngredient7,
                  strMeasure: response!.strMeasure7),
            )
          ] else ...[
            const SizedBox.shrink(),
          ],
          if (response!.strIngredient8 != "" &&
              response!.strIngredient8 != null) ...[
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IngredientWidget(
                  strIngredient: response!.strIngredient8,
                  strMeasure: response!.strMeasure8),
            )
          ] else ...[
            const SizedBox.shrink(),
          ],
          if (response!.strIngredient9 != "" &&
              response!.strIngredient9 != null) ...[
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IngredientWidget(
                  strIngredient: response!.strIngredient9,
                  strMeasure: response!.strMeasure9),
            )
          ] else ...[
            const SizedBox.shrink(),
          ],
          if (response!.strIngredient10 != "" &&
              response!.strIngredient10 != null) ...[
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IngredientWidget(
                  strIngredient: response!.strIngredient10,
                  strMeasure: response!.strMeasure10),
            )
          ] else ...[
            const SizedBox.shrink(),
          ],
          if (response!.strIngredient11 != "" &&
              response!.strIngredient11 != null) ...[
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IngredientWidget(
                  strIngredient: response!.strIngredient11,
                  strMeasure: response!.strMeasure11),
            )
          ] else ...[
            const SizedBox.shrink(),
          ],
          if (response!.strIngredient12 != "" &&
              response!.strIngredient12 != null) ...[
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IngredientWidget(
                  strIngredient: response!.strIngredient12,
                  strMeasure: response!.strMeasure12),
            )
          ] else ...[
            const SizedBox.shrink(),
          ],
          if (response!.strIngredient13 != "" &&
              response!.strIngredient13 != null) ...[
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IngredientWidget(
                  strIngredient: response!.strIngredient13,
                  strMeasure: response!.strMeasure13),
            )
          ] else ...[
            const SizedBox.shrink(),
          ],
          if (response!.strIngredient14 != "" &&
              response!.strIngredient14 != null) ...[
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IngredientWidget(
                  strIngredient: response!.strIngredient14,
                  strMeasure: response!.strMeasure14),
            )
          ] else ...[
            const SizedBox.shrink(),
          ],
          if (response!.strIngredient15 != "" &&
              response!.strIngredient15 != null) ...[
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IngredientWidget(
                  strIngredient: response!.strIngredient15,
                  strMeasure: response!.strMeasure15),
            )
          ] else ...[
            const SizedBox.shrink(),
          ],
          if (response!.strIngredient16 != "" &&
              response!.strIngredient16 != null) ...[
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IngredientWidget(
                  strIngredient: response!.strIngredient16,
                  strMeasure: response!.strMeasure16),
            )
          ] else ...[
            const SizedBox.shrink(),
          ],
          if (response!.strIngredient17 != "" &&
              response!.strIngredient17 != null) ...[
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IngredientWidget(
                  strIngredient: response!.strIngredient17,
                  strMeasure: response!.strMeasure17),
            )
          ] else ...[
            const SizedBox.shrink(),
          ],
          if (response!.strIngredient18 != "" &&
              response!.strIngredient18 != null) ...[
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IngredientWidget(
                  strIngredient: response!.strIngredient18,
                  strMeasure: response!.strMeasure18),
            )
          ] else ...[
            const SizedBox.shrink(),
          ],
          if (response!.strIngredient19 != "" &&
              response!.strIngredient19 != null) ...[
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IngredientWidget(
                  strIngredient: response!.strIngredient19,
                  strMeasure: response!.strMeasure19),
            )
          ] else ...[
            const SizedBox.shrink(),
          ],
          if (response!.strIngredient20 != "" &&
              response!.strIngredient20 != null) ...[
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IngredientWidget(
                  strIngredient: response!.strIngredient20,
                  strMeasure: response!.strMeasure20),
            )
          ] else ...[
            const SizedBox.shrink(),
          ],
        ],
      ),
    );
  }
}
