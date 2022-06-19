import 'package:flutter/material.dart';
import 'package:food_reciepe/model/model.dart';
import 'package:food_reciepe/service/category_services.dart';

import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../widgets/widgets.dart';

class RecipeDetailScreen extends StatefulWidget {
  final String id;

  const RecipeDetailScreen({super.key, required this.id});

  @override
  State<RecipeDetailScreen> createState() => _RecipeDetailScreenState();
}

class _RecipeDetailScreenState extends State<RecipeDetailScreen> {
  RecipeDetailModel? _response;
  final _service = Services();
  @override
  void initState() {
    _getData(widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: _response != null
          ? SlidingUpPanel(
              parallaxEnabled: true,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              minHeight: (size.height / 2),
              maxHeight: size.height / 1.2,
              body: SlidingPanelBody(response: _response, size: size),
              panelBuilder: (scrollController) {
                return SlidingPanelBuilder(
                  scrollController: scrollController,
                  response: _response,
                );
              },
            )
          : const Center(
              child: Text('Loading'),
            ),
    );
  }

  void _getData(id) async {
    final response = await _service.fetchDetail(id);
    setState(() {
      _response = response;
    });
  }
}
