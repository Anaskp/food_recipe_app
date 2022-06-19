import 'package:flutter/material.dart';

import '../model/model.dart';

class SlidingPanelBody extends StatelessWidget {
  const SlidingPanelBody({
    Key? key,
    required RecipeDetailModel? response,
    required this.size,
  })  : _response = response,
        super(key: key);

  final RecipeDetailModel? _response;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          _response!.strMealThumb,
          fit: BoxFit.cover,
          width: size.width,
          height: (size.height / 2) + 50,
        ),
        Positioned(
          top: 30,
          left: 20,
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff042628),
              borderRadius: BorderRadius.circular(10),
            ),
            width: 40,
            height: 40,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ],
    );
  }
}
