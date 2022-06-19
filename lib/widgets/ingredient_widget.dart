import 'package:flutter/material.dart';

class IngredientWidget extends StatelessWidget {
  final dynamic strIngredient;
  final dynamic strMeasure;

  const IngredientWidget(
      {super.key, required this.strIngredient, required this.strMeasure});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff042628),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: RichText(
            text: TextSpan(
              text: strIngredient,
              style: const TextStyle(
                fontSize: 16,
              ),
              children: [
                const WidgetSpan(
                  child: SizedBox(
                    width: 10,
                  ),
                ),
                TextSpan(
                  text: strMeasure,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
